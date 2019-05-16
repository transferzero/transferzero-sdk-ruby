#!/usr/bin/env ruby

require 'securerandom'
require 'bundler/inline'

gemfile do
  gem "transferzero-sdk", "=1.0.0"
end

require 'transferzero-sdk'

credentials = {
    key: "<key>",
    secret: "<secret>",
    host: "https://api-sandbox.transferzero.com/v1"
}

# Please see our documentation at https://github.com/transferzero/api-documentation
# and the API specification at http://api.transferzero.com/documentation/
# for more information.

class Client
  def initialize(credentials)
    TransferZero.configure do |config|
      config.api_key = credentials[:key]
      config.api_secret = credentials[:secret]
      config.host = credentials[:host]
    end
  end

  def list_currencies_example
    begin
      currency_info_api = TransferZero::CurrencyInfoApi.new
      currencies = currency_info_api.info_currencies.object
      currencies.map(&:code)
    rescue TransferZero::ApiError => e
      puts "Exception when calling CurrencyInfoApi#info_currencies: #{e}"
    end
  end

  def account_validation_example
    # See https://github.com/transferzero/api-documentation/blob/master/additional-features.md#bank-account-name-enquiry
    # for more information on how this feature can be used
    begin
      request = TransferZero::AccountValidationRequest.new
      request.bank_account = '9040009999999'
      request.bank_code = '120100'
      request.country = 'GH'
      request.currency = 'GHS'
      request.method = 'bank'

      account_validation_api = TransferZero::AccountValidationApi.new
      account_validation = account_validation_api.post_account_validations(request)
      account_name = account_validation.object.account_name
      puts "Account Name: #{account_name}"
    rescue TransferZero::ApiError => e
      if e.validation_error
        puts e.response_object("AccountValidationResponse").meta.error
      else
        puts "Exception when calling AccountValidationApi#account_validation_example: #{e}"
      end
    end
  end

  def create_sender_example
    # For more details on senders please check https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#sender
    begin
      api = TransferZero::SendersApi.new
      sender = TransferZero::Sender.new
      sender.country = 'UG'
      sender.phone_country = 'UG'
      sender.phone_number = '752403639'
      sender.email = 'example@home.org'
      sender.first_name = 'Johnny'
      sender.last_name = 'English'
      sender.city = 'Kampala'
      sender.street = "Unknown 17-3"
      sender.address_description = "Description of address"
      sender.postal_code = "798983"
      sender.birth_date = "1900-12-31"
      sender.ip = '127.0.0.1'
      sender.external_id = 'SENDER-2b59def0' # Optional field for customer ID

      sender_request = TransferZero::SenderRequest.new
      sender_request.sender = sender
      sender_response = api.post_senders(sender_request)
      created_sender = sender_response.object

      puts "Sender created! ID: #{created_sender.id}"
      created_sender.id
    rescue TransferZero::ApiError => e
      if e.validation_error
        puts e.response_object("SenderResponse").object.errors
      else
        puts "Exception when calling SendersApi#create_sender_example: #{e}"
      end
    end
  end

  def get_sender_by_external_id_example
    # Find more details on external IDs at https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#external-id
    begin
      opts = { external_id: 'SENDER-2b59def0' }
      sender = TransferZero::SendersApi.new
      sender.get_senders(opts).object.first
    rescue TransferZero::ApiError => e
      if e.validation_error
        puts e.response_object("SenderResponse").object.errors
      else
        puts "Exception when calling SendersApi#get_sender_by_external_id_example: #{e}"
      end
    end
  end

  def update_sender_example
    # For more details on senders please check https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#sender
    begin
      api = TransferZero::SendersApi.new
      sender = TransferZero::Sender.new
      sender.city = 'London'
      sender_request = TransferZero::SenderRequest.new
      sender_request.sender = sender

      api.patch_sender('ec33484c-4456-4625-a823-9704a3a54e68', sender_request)
    rescue TransferZero::ApiError => e
      if e.validation_error
        puts e.response_object("SenderResponse").object.errors
      else
        puts "Exception when calling SendersApi#create_sender_example: #{e}"
      end
    end
  end

  def create_transaction_example
    begin
      api = TransferZero::TransactionsApi.new
      transaction = TransferZero::Transaction.new
      # Please check our documentation at https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md
      # for details on how transactions work.

      sender = TransferZero::Sender.new
      # When adding a sender to transaction, please use either an id or external_id. Providing both will result in a validation error.
      # Please see our documentation at https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#sender
      sender.id = 'ec33484c-4456-4625-a823-9704a3a54e68'

      # You can find the various payout options at https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#payout-details
      ngn_bank_details = TransferZero::PayoutMethodDetails.new
      ngn_bank_details.bank_account = '123456789'
      ngn_bank_details.bank_account_type = TransferZero::PayoutMethodBankAccountTypeEnum::N20
      ngn_bank_details.bank_code = '082'
      ngn_bank_details.first_name = 'first'
      ngn_bank_details.last_name = 'last'

      payout_method = TransferZero::PayoutMethod.new
      payout_method.type = 'NGN::Bank'
      payout_method.details = ngn_bank_details

      # Please see https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#requested-amount-and-currency
      # on what the request amount and currencies do
      recipient = TransferZero::Recipient.new
      recipient.requested_amount = 10000
      recipient.requested_currency = 'NGN'
      recipient.payout_method = payout_method

      # Similarly you can check https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#requested-amount-and-currency
      # on details about the input currency parameter

      # Find more details on external IDs at https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#external-id
      transaction.external_id = 'TRANSACTION-1f834add' # Optional field for customer's ID
      transaction.input_currency = 'GBP'
      transaction.sender = sender
      transaction.recipients = [recipient]

      transaction_request = TransferZero::TransactionRequest.new
      transaction_request.transaction = transaction
      transaction_response = api.post_transactions(transaction_request)
      created_transaction = transaction_response.object

      puts "Transaction created! ID: #{created_transaction.id}"
      created_transaction.id
    rescue TransferZero::ApiError => e
      if e.validation_error
        puts e.response_object("TransactionResponse").object.errors
      else
        puts e
      end
    end
  end

  def get_transaction_by_external_id_example
    # Please see https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#external-id
    # for more details on external IDs
    begin
      opts = { external_id: 'TRANSACTION-1f834add' }
      transaction = TransferZero::TransactionsApi.new
      transaction.get_transactions(opts).object.first
    rescue TransferZero::ApiError => e
      if e.validation_error
        puts e.response_object("TransactionResponse").object.errors
      else
        puts "Exception when calling TransactionsApi#get_transaction_by_external_id_example: #{e}"
      end
    end
  end

  def create_and_fund_transaction_example
    transaction_id = create_transaction_example
    if transaction_id.nil?
      puts "Transaction with ID #{transaction_id} does not exist"
    else
      # Please see https://github.com/transferzero/api-documentation/blob/master/transaction-flow.md#funding-transactions
      # on details about funding transactions
      debit = TransferZero::Debit.new
      debit.currency = 'GBP'
      debit.to_id = transaction_id
      debit.to_type = "Transaction"

      debit_request = TransferZero::DebitRequestWrapper.new
      debit_request.debit = debit

      debit_api = TransferZero::AccountDebitsApi.new

      begin
        debit_response = debit_api.post_accounts_debits(debit_request)
        puts "Transaction Funded Successfully"
        debit_response.object
      rescue TransferZero::ApiError => e
        if e.validation_error
          puts e.response_object("DebitResponse").object.errors
        else
          puts e
        end
      end
    end
  end

  def webhook_parse_example
    # Please see https://github.com/transferzero/api-documentation#webhooks
    # for more details about how webhooks / callbacks work from our system
    headers = {
      "Authorization-Nonce": "<authorization-nonce>",
      "Authorization-Key": "<authorization-key>",
      "Authorization-Signature": "<authorization-signature>"
    }

    body = <<-JSON
    {
      "webhook": "85d11cf4-d4d6-46e4-ab7d-91355e80392a",
      "event": "transaction.created",
      "object": {
        "input_amount": 21.59,
        "input_currency": "GBP",
        "id": "cd390e83-a9de-404d-a660-4da0f1342c04",
        "metadata": {},
        "state": "approved",
        "payin_reference": "WIHGHZTSPOWN",
        "sender": {
          "id": "6f15f581-889f-4ae1-9591-cb283add661f",
          "type": "person",
          "state": "approved",
          "state_reason": null,
          "country": "GB",
          "street": "Brick Lane",
          "postal_code": "E1 6QL",
          "city": "London",
          "phone_country": "GB",
          "phone_number": "07123456789",
          "email": "me@transferzero.com",
          "ip": "127.0.0.1",
          "address_description": null,
          "first_name": "Test",
          "middle_name": null,
          "last_name": "User",
          "birth_date": "1990-01-01",
          "occupation": "Tester",
          "nationality": null,
          "metadata": {
            "transferzero": {
              "referer": {}
            }
          },
          "providers": {
            "NGN::Bank": "transferzero_auto"
          },
          "onboarding_status": "completed_first_transaction"
          },
          "payin_methods": [
            {
              "id": "e78632a8-51de-4b78-892c-31d6c5d0db5c",
              "type": "GBP::Bank",
              "out_details": {
                "style": "info",
                "BIC": "LHVBEE22",
                "IBAN": "EE087700771002673049",
                "Reference": "WIHGHZTSPOWN",
                "Account Name": "B TRANSFER SERVICES LIMITED",
                "Bank Address": "Tartu mnt 2, 10145 Tallinn, Estonia.",
                "Beneficiary Address": "Tax Assist Accountants, 64 Southwark Bridge Road, London SE1 0AS"
              },
              "in_details": {},
              "instructions": {},
              "provider": "lhv"
            }
          ],
          "paid_amount": 0,
          "due_amount": 21.59,
          "recipients": [
            {
              "created_at": "2019-03-04T07:41:49.972Z",
              "editable": true,
              "id": "4a401c7f-7e38-445f-bb85-7dcad8d22e91",
              "input_usd_amount": 28.52,
              "may_cancel": true,
              "metadata": {},
              "state": "initial",
              "transaction_id": "cd390e83-a9de-404d-a660-4da0f1342c04",
              "transaction_state": "initial",
              "payout_method": {
                "id": "b704e560-da50-4ff5-9bd7-b9499dba4b54",
                "type": "NGN::Bank",
                "details": {
                  "bank_code": "082",
                  "last_name": "Last",
                  "first_name": "First",
                  "bank_account": "123456789",
                  "bank_account_type": "20"
                },
                "metadata": {},
                "provider": "transferzero_auto",
                "fields": {
                  "email": {
                    "type": "input",
                    "validations": {
                      "format": "\\A((\\w+([\\-+.]\\w+)*@[a-zA-Z0-9]+([\\-\\.][a-zA-Z0-9]+)*)*){3,320}\\z"
                    }
                  },
                  "first_name": {
                    "type": "input",
                    "validations": {
                      "presence": true
                    }
                  },
                  "last_name": {
                    "type": "input",
                    "validations": {
                      "presence": true
                    }
                  },
                  "bank_code": {
                    "type": "select",
                    "options": {
                      "214": "FCMB Bank",
                      "215": "Unity Bank",
                      "232": "Sterling bank",
                      "301": "Jaiz Bank",
                      "044": "Access Bank",
                      "063": "Diamond Bank",
                      "050": "EcoBank",
                      "070": "Fidelity Bank",
                      "011": "First Bank of Nigeria",
                      "058": "Guaranty Trust Bank",
                      "030": "Heritage Bank",
                      "082": "Keystone",
                      "076": "Polaris Bank",
                      "039": "Stanbic IBTC Bank",
                      "032": "Union Bank",
                      "033": "United Bank for Africa",
                      "035": "Wema Bank",
                      "057": "Zenith International"
                    },
                    "validations": {
                      "presence": true,
                      "inclusion": {
                        "in": {
                          "214": "FCMB Bank",
                          "215": "Unity Bank",
                          "232": "Sterling bank",
                          "301": "Jaiz Bank",
                          "044": "Access Bank",
                          "063": "Diamond Bank",
                          "050": "EcoBank",
                          "070": "Fidelity Bank",
                          "011": "First Bank of Nigeria",
                          "058": "Guaranty Trust Bank",
                          "030": "Heritage Bank",
                          "082": "Keystone",
                          "076": "Polaris Bank",
                          "039": "Stanbic IBTC Bank",
                          "032": "Union Bank",
                          "033": "United Bank for Africa",
                          "035": "Wema Bank",
                          "057": "Zenith International"
                        }
                      }
                    }
                  },
                  "bank_account": {
                    "type": "input",
                    "validations": {
                      "presence": true
                    }
                  },
                  "bank_account_type": {
                    "type": "select",
                    "options": {
                      "10": "Savings",
                      "20": "Current",
                      "00": "Unknown"
                    }
                  }
                }
              },
              "exchange_rate": 463.177396943029,
              "fee_fractional": 64,
              "requested_amount": 10000,
              "requested_currency": "NGN",
              "input_amount": 21.59,
              "input_currency": "GBP",
              "output_amount": 10000,
              "output_currency": "NGN"
            }
          ],
          "created_at": "2019-03-04T07:41:49.972Z",
          "expires_at": "2019-03-07T07:41:49.972Z",
          "traits": {}
        }
      }
    JSON

    webhook_api = TransferZero::ApiClient.new
    webhook_url = "<url>"

    # Once you've set up an endpoint where you'll be receiving callbacks you can use the following code snippet
    # to both verify that the webhook we sent out is legitimate, and then parse it's contents regardless of type.
    # The details you need to provide are:
    #   - the body of the webhook/callback you received as a string
    #   - the url of your webhook, where you are awaiting the callbacks - this has to be the full URL
    #   - the authentication headers you have received on your webhook endpoint - as an associative array

    if webhook_api.validate_webhook_request(webhook_url, body, headers)
      webhook = webhook_api.parse_response(body, "Webhook")
      if webhook['event'].start_with?('transaction')
        transaction_webhook = webhook_api.parse_response(body, 'TransactionWebhook')
        puts transaction_webhook.object.to_s
      elsif webhook['event'].start_with?('recipient')
        recipient_webhook = webhook_api.parse_response(body, 'RecipientWebhook')
        puts recipient_webhook.object.to_s
      elsif webhook['event'].start_with?('payout_method')
        payout_method_webhook = webhook_api.parse_response(body, 'PayoutMethodWebhook')
        puts payout_method_webhook.object.to_s
      elsif webhook['event'].start_with?('sender')
        sender_webhook = webhook_api.parse_response(body, 'SenderWebhook')
        puts sender_webhook.object.to_s
      elsif webhook['event'].start_with?('document')
        document_webhook = webhook_api.parse_response(body, 'DocumentWebhook')
        puts document_webhook.object.to_s
      else
        puts webhook
      end
    end
  end
end

# client = Client.new(credentials)
# client.list_currencies_example
# client.account_validation_example
# client.create_sender_example
# client.get_sender_by_external_id_example
# client.update_sender_example
# client.create_transaction_example
# client.get_transaction_by_external_id_example
# client.create_and_fund_transaction_example
# client.webhook_parse_example
