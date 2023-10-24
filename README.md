# transferzero-sdk

TransferZero - the Ruby gem for the TransferZero API

Reference documentation for the TransferZero API V1

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.31.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

For more information, please visit:

* [API Documentation](https://docs.transferzero.com)
  * [Onboarding guide](https://docs.transferzero.com/docs/quick-integration/)
  * [Transaction flow](https://docs.transferzero.com/docs/transaction-flow/)
  * [Additional features](https://docs.transferzero.com/docs/additional-features/)
* [API Specification](https://api.transferzero.com/documentation)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build transferzero-sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./transferzero-sdk-1.31.0.gem
```
(for development, run `gem install --dev ./transferzero-sdk-1.31.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'transferzero-sdk', '~> 1.31.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/transferzero/transferzero-sdk-ruby, then add the following in the Gemfile:

    gem 'transferzero-sdk', :git => 'https://github.com/transferzero/transferzero-sdk-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

## Webhooks

To parse webhooks you can use the following snippet:
```ruby
webhook_content = "{ webhook content from endpoint }"

url = "<url from webhook headers>"

headers = {
  "Authorization-Nonce": "<nonce from webhook headers>",
  "Authorization-Key": "<key from webhook headers>",
  "Authorization-Signature": "<signature from webhook headers>"
}
webhook_api = TransferZero::ApiClient.new

if webhook_api.validate_webhook_request(webhook_url, webhook_content, headers)
  webhook = webhook_api.parse_response(webhook_content, "Webhook")

  if webhook['event'].start_with?('transaction')
    transaction_webhook = webhook_api.parse_response(webhook_content, 'TransactionWebhook')
    puts transaction_webhook.object.to_s
  elsif webhook['event'].start_with?('recipient')
    recipient_webhook = webhook_api.parse_response(webhook_content, 'RecipientWebhook')
    puts recipient_webhook.object.to_s
  elsif webhook['event'].start_with?('payout_method')
    payout_method_webhook = webhook_api.parse_response(webhook_content, 'PayoutMethodWebhook')
    puts payout_method_webhook.object.to_s
  elsif webhook['event'].start_with?('sender')
    sender_webhook = webhook_api.parse_response(webhook_content, 'SenderWebhook')
    puts sender_webhook.object.to_s
  elsif webhook['event'].start_with?('document')
    document_webhook = webhook_api.parse_response(webhook_content, 'DocumentWebhook')
    puts document_webhook.object.to_s
  else
    puts webhook
  end
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api-sandbox.transferzero.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TransferZero::APILogsApi* | [**get_api_log**](docs/APILogsApi.md#get_api_log) | **GET** /api_logs/{API Log ID} | Fetch an individual API log
*TransferZero::APILogsApi* | [**get_api_logs**](docs/APILogsApi.md#get_api_logs) | **GET** /api_logs | Fetch a list of API logs
*TransferZero::AccountDebitsApi* | [**post_accounts_debits**](docs/AccountDebitsApi.md#post_accounts_debits) | **POST** /accounts/debits | Creating an account debit
*TransferZero::AccountValidationApi* | [**post_account_validations**](docs/AccountValidationApi.md#post_account_validations) | **POST** /account_validations | Validates the existence of a bank account or a mobile phone number
*TransferZero::AccountsApi* | [**get_account**](docs/AccountsApi.md#get_account) | **GET** /accounts/{Currency} | Fetches account balance for specified currrency
*TransferZero::AccountsApi* | [**get_accounts**](docs/AccountsApi.md#get_accounts) | **GET** /accounts | Fetches account balances for all currencies
*TransferZero::CurrencyInfoApi* | [**info_currencies**](docs/CurrencyInfoApi.md#info_currencies) | **GET** /info/currencies | Getting a list of possible requested currencies
*TransferZero::CurrencyInfoApi* | [**info_currencies_in**](docs/CurrencyInfoApi.md#info_currencies_in) | **GET** /info/currencies/in | Getting a list of possible input currencies
*TransferZero::CurrencyInfoApi* | [**info_currencies_out**](docs/CurrencyInfoApi.md#info_currencies_out) | **GET** /info/currencies/out | Getting a list of possible output currencies
*TransferZero::DocumentsApi* | [**get_document**](docs/DocumentsApi.md#get_document) | **GET** /documents/{Document ID} | Fetching a document
*TransferZero::DocumentsApi* | [**get_documents**](docs/DocumentsApi.md#get_documents) | **GET** /documents | Getting a list of documents
*TransferZero::DocumentsApi* | [**post_documents**](docs/DocumentsApi.md#post_documents) | **POST** /documents | Creating a document
*TransferZero::LogsApi* | [**get_webhook_log**](docs/LogsApi.md#get_webhook_log) | **GET** /logs/{Webhook Log ID} | Fetch an individual webhook log
*TransferZero::LogsApi* | [**get_webhook_logs**](docs/LogsApi.md#get_webhook_logs) | **GET** /logs/webhooks | Fetch a list of webhook logs
*TransferZero::PayinMethodsApi* | [**delete_payin_method**](docs/PayinMethodsApi.md#delete_payin_method) | **DELETE** /payin_methods/{PayinMethod ID} | Deleting a payin method
*TransferZero::PayinMethodsApi* | [**get_payin_method**](docs/PayinMethodsApi.md#get_payin_method) | **GET** /payin_methods/{PayinMethod ID} | Fetching a payin method
*TransferZero::PayinMethodsApi* | [**patch_payin_method**](docs/PayinMethodsApi.md#patch_payin_method) | **PATCH** /payin_methods/{PayinMethod ID} | Updating a payin method
*TransferZero::PayinMethodsApi* | [**retry_payin_method**](docs/PayinMethodsApi.md#retry_payin_method) | **POST** /payin_methods/{PayinMethod ID}/retry | Retries PayinMethod
*TransferZero::PaymentMethodsApi* | [**payment_methods_in**](docs/PaymentMethodsApi.md#payment_methods_in) | **GET** /info/payment_methods/in | This method returns possible payin methods.
*TransferZero::PaymentMethodsApi* | [**payment_methods_out**](docs/PaymentMethodsApi.md#payment_methods_out) | **GET** /info/payment_methods/out | This method returns possible payout methods.
*TransferZero::PayoutMethodsApi* | [**delete_payout_method**](docs/PayoutMethodsApi.md#delete_payout_method) | **DELETE** /payout_methods/{Payout Method ID} | Deleting a payout method
*TransferZero::PayoutMethodsApi* | [**get_payout_method**](docs/PayoutMethodsApi.md#get_payout_method) | **GET** /payout_methods/{Payout Method ID} | Fetching a payout method
*TransferZero::PayoutMethodsApi* | [**get_payout_methods**](docs/PayoutMethodsApi.md#get_payout_methods) | **GET** /payout_methods | Listing payout methods
*TransferZero::PayoutMethodsApi* | [**patch_payout_method**](docs/PayoutMethodsApi.md#patch_payout_method) | **PATCH** /payout_methods/{Payout Method ID} | Updating a payout method
*TransferZero::PayoutMethodsApi* | [**post_payout_methods**](docs/PayoutMethodsApi.md#post_payout_methods) | **POST** /payout_methods | Creating a payout method
*TransferZero::RecipientsApi* | [**delete_recipient**](docs/RecipientsApi.md#delete_recipient) | **DELETE** /recipients/{Recipient ID} | Cancelling a recipient
*TransferZero::RecipientsApi* | [**get_recipients**](docs/RecipientsApi.md#get_recipients) | **GET** /recipients | Getting a list of recipients with filtering
*TransferZero::RecipientsApi* | [**patch_recipient**](docs/RecipientsApi.md#patch_recipient) | **PATCH** /recipients/{Recipient ID} | Updating a recipient
*TransferZero::RecipientsApi* | [**proof_of_payments**](docs/RecipientsApi.md#proof_of_payments) | **GET** /recipients/{Recipient ID}/proof_of_payments | Returns list of proof of payments
*TransferZero::SendersApi* | [**delete_sender**](docs/SendersApi.md#delete_sender) | **DELETE** /senders/{Sender ID} | Deleting a sender
*TransferZero::SendersApi* | [**get_sender**](docs/SendersApi.md#get_sender) | **GET** /senders/{Sender ID} | Fetching a sender
*TransferZero::SendersApi* | [**get_senders**](docs/SendersApi.md#get_senders) | **GET** /senders | Listing senders
*TransferZero::SendersApi* | [**patch_sender**](docs/SendersApi.md#patch_sender) | **PATCH** /senders/{Sender ID} | Updating a sender
*TransferZero::SendersApi* | [**post_senders**](docs/SendersApi.md#post_senders) | **POST** /senders | Creating a sender
*TransferZero::TransactionsApi* | [**calculate_transactions**](docs/TransactionsApi.md#calculate_transactions) | **POST** /transactions/calculate | Calculates transaction amounts for a transaction payload
*TransferZero::TransactionsApi* | [**create_and_fund_transaction**](docs/TransactionsApi.md#create_and_fund_transaction) | **POST** /transactions/create_and_fund | Creates a new transaction and funds it from account balance
*TransferZero::TransactionsApi* | [**get_transaction**](docs/TransactionsApi.md#get_transaction) | **GET** /transactions/{Transaction ID} | Fetch a single transaction
*TransferZero::TransactionsApi* | [**get_transactions**](docs/TransactionsApi.md#get_transactions) | **GET** /transactions | Get a list of transactions
*TransferZero::TransactionsApi* | [**payin_transaction**](docs/TransactionsApi.md#payin_transaction) | **POST** /transactions/{Transaction ID}/payin | Creates a fake payin for transaction
*TransferZero::TransactionsApi* | [**payout_transaction**](docs/TransactionsApi.md#payout_transaction) | **POST** /transactions/{Transaction ID}/payout | Creates a fake payout for transaction
*TransferZero::TransactionsApi* | [**post_transactions**](docs/TransactionsApi.md#post_transactions) | **POST** /transactions | Creates a new transaction
*TransferZero::TransactionsApi* | [**validate_transactions**](docs/TransactionsApi.md#validate_transactions) | **POST** /transactions/validate | Validates a transaction payload
*TransferZero::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{Webhook ID} | Unsubscribing from a webhook
*TransferZero::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /webhooks/{Webhook ID} | Find a webhook's details
*TransferZero::WebhooksApi* | [**get_webhook_events**](docs/WebhooksApi.md#get_webhook_events) | **GET** /webhooks/events | Find possible webhook events
*TransferZero::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks | Listing webhooks
*TransferZero::WebhooksApi* | [**post_webhooks**](docs/WebhooksApi.md#post_webhooks) | **POST** /webhooks | Creating a webhook


## Documentation for Models

 - [TransferZero::Account](docs/Account.md)
 - [TransferZero::AccountListResponse](docs/AccountListResponse.md)
 - [TransferZero::AccountMeta](docs/AccountMeta.md)
 - [TransferZero::AccountResponse](docs/AccountResponse.md)
 - [TransferZero::AccountValidationError](docs/AccountValidationError.md)
 - [TransferZero::AccountValidationRequest](docs/AccountValidationRequest.md)
 - [TransferZero::AccountValidationResponse](docs/AccountValidationResponse.md)
 - [TransferZero::AccountValidationResult](docs/AccountValidationResult.md)
 - [TransferZero::ApiLog](docs/ApiLog.md)
 - [TransferZero::ApiLogListResponse](docs/ApiLogListResponse.md)
 - [TransferZero::ApiLogResponse](docs/ApiLogResponse.md)
 - [TransferZero::Currency](docs/Currency.md)
 - [TransferZero::CurrencyExchange](docs/CurrencyExchange.md)
 - [TransferZero::CurrencyExchangeListResponse](docs/CurrencyExchangeListResponse.md)
 - [TransferZero::CurrencyListResponse](docs/CurrencyListResponse.md)
 - [TransferZero::CurrencyOpposite](docs/CurrencyOpposite.md)
 - [TransferZero::Debit](docs/Debit.md)
 - [TransferZero::DebitListRequest](docs/DebitListRequest.md)
 - [TransferZero::DebitListResponse](docs/DebitListResponse.md)
 - [TransferZero::DebitRequest](docs/DebitRequest.md)
 - [TransferZero::DebitRequestWrapper](docs/DebitRequestWrapper.md)
 - [TransferZero::Document](docs/Document.md)
 - [TransferZero::DocumentListResponse](docs/DocumentListResponse.md)
 - [TransferZero::DocumentRequest](docs/DocumentRequest.md)
 - [TransferZero::DocumentResponse](docs/DocumentResponse.md)
 - [TransferZero::DocumentWebhook](docs/DocumentWebhook.md)
 - [TransferZero::ErrorStatus](docs/ErrorStatus.md)
 - [TransferZero::FieldDescription](docs/FieldDescription.md)
 - [TransferZero::FieldSelectValidation](docs/FieldSelectValidation.md)
 - [TransferZero::FieldValidation](docs/FieldValidation.md)
 - [TransferZero::Pagination](docs/Pagination.md)
 - [TransferZero::PaginationMeta](docs/PaginationMeta.md)
 - [TransferZero::PayinMethod](docs/PayinMethod.md)
 - [TransferZero::PayinMethodDetails](docs/PayinMethodDetails.md)
 - [TransferZero::PayinMethodDetailsBTC](docs/PayinMethodDetailsBTC.md)
 - [TransferZero::PayinMethodDetailsMobile](docs/PayinMethodDetailsMobile.md)
 - [TransferZero::PayinMethodDetailsNGNBank](docs/PayinMethodDetailsNGNBank.md)
 - [TransferZero::PayinMethodRequest](docs/PayinMethodRequest.md)
 - [TransferZero::PayinMethodResponse](docs/PayinMethodResponse.md)
 - [TransferZero::PayinMethodState](docs/PayinMethodState.md)
 - [TransferZero::PayinMethodUxFlow](docs/PayinMethodUxFlow.md)
 - [TransferZero::PaymentMethod](docs/PaymentMethod.md)
 - [TransferZero::PaymentMethodListResponse](docs/PaymentMethodListResponse.md)
 - [TransferZero::PaymentMethodOpposite](docs/PaymentMethodOpposite.md)
 - [TransferZero::PayoutMethod](docs/PayoutMethod.md)
 - [TransferZero::PayoutMethodBankAccountTypeEnum](docs/PayoutMethodBankAccountTypeEnum.md)
 - [TransferZero::PayoutMethodCashProviderEnum](docs/PayoutMethodCashProviderEnum.md)
 - [TransferZero::PayoutMethodCountryEnum](docs/PayoutMethodCountryEnum.md)
 - [TransferZero::PayoutMethodDetails](docs/PayoutMethodDetails.md)
 - [TransferZero::PayoutMethodDetailsBRLBank](docs/PayoutMethodDetailsBRLBank.md)
 - [TransferZero::PayoutMethodDetailsBTC](docs/PayoutMethodDetailsBTC.md)
 - [TransferZero::PayoutMethodDetailsBWPBank](docs/PayoutMethodDetailsBWPBank.md)
 - [TransferZero::PayoutMethodDetailsBalance](docs/PayoutMethodDetailsBalance.md)
 - [TransferZero::PayoutMethodDetailsCADBank](docs/PayoutMethodDetailsCADBank.md)
 - [TransferZero::PayoutMethodDetailsEGPBank](docs/PayoutMethodDetailsEGPBank.md)
 - [TransferZero::PayoutMethodDetailsGBPBank](docs/PayoutMethodDetailsGBPBank.md)
 - [TransferZero::PayoutMethodDetailsGHSBank](docs/PayoutMethodDetailsGHSBank.md)
 - [TransferZero::PayoutMethodDetailsGHSCash](docs/PayoutMethodDetailsGHSCash.md)
 - [TransferZero::PayoutMethodDetailsGNFMobile](docs/PayoutMethodDetailsGNFMobile.md)
 - [TransferZero::PayoutMethodDetailsIBAN](docs/PayoutMethodDetailsIBAN.md)
 - [TransferZero::PayoutMethodDetailsINRBank](docs/PayoutMethodDetailsINRBank.md)
 - [TransferZero::PayoutMethodDetailsKESBank](docs/PayoutMethodDetailsKESBank.md)
 - [TransferZero::PayoutMethodDetailsKESMobile](docs/PayoutMethodDetailsKESMobile.md)
 - [TransferZero::PayoutMethodDetailsMADCash](docs/PayoutMethodDetailsMADCash.md)
 - [TransferZero::PayoutMethodDetailsMobile](docs/PayoutMethodDetailsMobile.md)
 - [TransferZero::PayoutMethodDetailsNGNBank](docs/PayoutMethodDetailsNGNBank.md)
 - [TransferZero::PayoutMethodDetailsNZDBank](docs/PayoutMethodDetailsNZDBank.md)
 - [TransferZero::PayoutMethodDetailsUGXBank](docs/PayoutMethodDetailsUGXBank.md)
 - [TransferZero::PayoutMethodDetailsUSDBank](docs/PayoutMethodDetailsUSDBank.md)
 - [TransferZero::PayoutMethodDetailsUSDCash](docs/PayoutMethodDetailsUSDCash.md)
 - [TransferZero::PayoutMethodDetailsXAFBank](docs/PayoutMethodDetailsXAFBank.md)
 - [TransferZero::PayoutMethodDetailsXAFMobile](docs/PayoutMethodDetailsXAFMobile.md)
 - [TransferZero::PayoutMethodDetailsXOFBank](docs/PayoutMethodDetailsXOFBank.md)
 - [TransferZero::PayoutMethodDetailsXOFCash](docs/PayoutMethodDetailsXOFCash.md)
 - [TransferZero::PayoutMethodDetailsXOFMobile](docs/PayoutMethodDetailsXOFMobile.md)
 - [TransferZero::PayoutMethodDetailsZARBank](docs/PayoutMethodDetailsZARBank.md)
 - [TransferZero::PayoutMethodDetailsZMWBank](docs/PayoutMethodDetailsZMWBank.md)
 - [TransferZero::PayoutMethodGenderEnum](docs/PayoutMethodGenderEnum.md)
 - [TransferZero::PayoutMethodIdentityCardTypeEnum](docs/PayoutMethodIdentityCardTypeEnum.md)
 - [TransferZero::PayoutMethodLegalEntityTypeEnum](docs/PayoutMethodLegalEntityTypeEnum.md)
 - [TransferZero::PayoutMethodListResponse](docs/PayoutMethodListResponse.md)
 - [TransferZero::PayoutMethodMobileProviderEnum](docs/PayoutMethodMobileProviderEnum.md)
 - [TransferZero::PayoutMethodNatureOfBusinessEnum](docs/PayoutMethodNatureOfBusinessEnum.md)
 - [TransferZero::PayoutMethodPixKeyTypeEnum](docs/PayoutMethodPixKeyTypeEnum.md)
 - [TransferZero::PayoutMethodRequest](docs/PayoutMethodRequest.md)
 - [TransferZero::PayoutMethodResponse](docs/PayoutMethodResponse.md)
 - [TransferZero::PayoutMethodTransferReasonEnum](docs/PayoutMethodTransferReasonEnum.md)
 - [TransferZero::PayoutMethodWebhook](docs/PayoutMethodWebhook.md)
 - [TransferZero::PoliticallyExposedPerson](docs/PoliticallyExposedPerson.md)
 - [TransferZero::ProofOfPayment](docs/ProofOfPayment.md)
 - [TransferZero::ProofOfPaymentListResponse](docs/ProofOfPaymentListResponse.md)
 - [TransferZero::Recipient](docs/Recipient.md)
 - [TransferZero::RecipientListResponse](docs/RecipientListResponse.md)
 - [TransferZero::RecipientRequest](docs/RecipientRequest.md)
 - [TransferZero::RecipientResponse](docs/RecipientResponse.md)
 - [TransferZero::RecipientState](docs/RecipientState.md)
 - [TransferZero::RecipientStateReasonDetails](docs/RecipientStateReasonDetails.md)
 - [TransferZero::RecipientWebhook](docs/RecipientWebhook.md)
 - [TransferZero::Sender](docs/Sender.md)
 - [TransferZero::SenderListResponse](docs/SenderListResponse.md)
 - [TransferZero::SenderRequest](docs/SenderRequest.md)
 - [TransferZero::SenderResponse](docs/SenderResponse.md)
 - [TransferZero::SenderResponseExisting](docs/SenderResponseExisting.md)
 - [TransferZero::SenderResponseMeta](docs/SenderResponseMeta.md)
 - [TransferZero::SenderState](docs/SenderState.md)
 - [TransferZero::SenderWebhook](docs/SenderWebhook.md)
 - [TransferZero::StateReasonDetails](docs/StateReasonDetails.md)
 - [TransferZero::Transaction](docs/Transaction.md)
 - [TransferZero::TransactionListResponse](docs/TransactionListResponse.md)
 - [TransferZero::TransactionRequest](docs/TransactionRequest.md)
 - [TransferZero::TransactionResponse](docs/TransactionResponse.md)
 - [TransferZero::TransactionResponseExisting](docs/TransactionResponseExisting.md)
 - [TransferZero::TransactionResponseMeta](docs/TransactionResponseMeta.md)
 - [TransferZero::TransactionState](docs/TransactionState.md)
 - [TransferZero::TransactionTraits](docs/TransactionTraits.md)
 - [TransferZero::TransactionWebhook](docs/TransactionWebhook.md)
 - [TransferZero::ValidationErrorDescription](docs/ValidationErrorDescription.md)
 - [TransferZero::Webhook](docs/Webhook.md)
 - [TransferZero::WebhookDefinition](docs/WebhookDefinition.md)
 - [TransferZero::WebhookDefinitionEventListResponse](docs/WebhookDefinitionEventListResponse.md)
 - [TransferZero::WebhookDefinitionListResponse](docs/WebhookDefinitionListResponse.md)
 - [TransferZero::WebhookDefinitionRequest](docs/WebhookDefinitionRequest.md)
 - [TransferZero::WebhookDefinitionResponse](docs/WebhookDefinitionResponse.md)
 - [TransferZero::WebhookLog](docs/WebhookLog.md)
 - [TransferZero::WebhookLogListResponse](docs/WebhookLogListResponse.md)
 - [TransferZero::WebhookLogMetadata](docs/WebhookLogMetadata.md)
 - [TransferZero::WebhookLogMetadataRequest](docs/WebhookLogMetadataRequest.md)
 - [TransferZero::WebhookLogMetadataResponse](docs/WebhookLogMetadataResponse.md)
 - [TransferZero::WebhookLogResponse](docs/WebhookLogResponse.md)


## Documentation for Authorization

You can set the API Key and Secret on the ApiClient object for authentication:


```ruby
# Load the gem
require 'transferzero'

# Setup authorization

TransferZero.configure do |config|
  config.api_key = 'YOUR API KEY'
  config.api_secret = 'YOUR API SECRET'
  config.host = "https://api-sandbox.transferzero.com/v1"
end

begin
  request = TransferZero::AccountValidationRequest.new # account validation api
  request.bank_account = '9040004458219'
  request.bank_code = '020100'
  request.country = 'GH'
  request.currency = 'GHS'
  request.method = 'bank'

  avi = TransferZero::AccountValidationApi.new
  account_validation = avi.post_account_validations(request)
  account_name = account_validation.object.account_name
  puts "Account Name: #{account_name}"
rescue TransferZero::ApiError => e
  if e.validation_error
    puts e.response_object("AccountValidationResponse").meta.error
  else
    puts "Exception when calling AccountValidationApi#account_validation_example: #{e}"
  end
end
```
