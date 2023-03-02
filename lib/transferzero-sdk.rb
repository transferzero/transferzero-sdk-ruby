=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

# Common files
require 'transferzero-sdk/api_client'
require 'transferzero-sdk/api_error'
require 'transferzero-sdk/version'
require 'transferzero-sdk/configuration'

# Models
require 'transferzero-sdk/models/account'
require 'transferzero-sdk/models/account_list_response'
require 'transferzero-sdk/models/account_meta'
require 'transferzero-sdk/models/account_response'
require 'transferzero-sdk/models/account_validation_error'
require 'transferzero-sdk/models/account_validation_request'
require 'transferzero-sdk/models/account_validation_response'
require 'transferzero-sdk/models/account_validation_result'
require 'transferzero-sdk/models/api_log'
require 'transferzero-sdk/models/api_log_list_response'
require 'transferzero-sdk/models/api_log_response'
require 'transferzero-sdk/models/currency'
require 'transferzero-sdk/models/currency_exchange'
require 'transferzero-sdk/models/currency_exchange_list_response'
require 'transferzero-sdk/models/currency_list_response'
require 'transferzero-sdk/models/currency_opposite'
require 'transferzero-sdk/models/debit'
require 'transferzero-sdk/models/debit_list_request'
require 'transferzero-sdk/models/debit_list_response'
require 'transferzero-sdk/models/debit_request'
require 'transferzero-sdk/models/debit_request_wrapper'
require 'transferzero-sdk/models/debit_response'
require 'transferzero-sdk/models/document'
require 'transferzero-sdk/models/document_list_response'
require 'transferzero-sdk/models/document_request'
require 'transferzero-sdk/models/document_response'
require 'transferzero-sdk/models/document_webhook'
require 'transferzero-sdk/models/error_status'
require 'transferzero-sdk/models/field_description'
require 'transferzero-sdk/models/field_select_validation'
require 'transferzero-sdk/models/field_validation'
require 'transferzero-sdk/models/pagination'
require 'transferzero-sdk/models/pagination_meta'
require 'transferzero-sdk/models/payin_method'
require 'transferzero-sdk/models/payin_method_details'
require 'transferzero-sdk/models/payin_method_details_btc'
require 'transferzero-sdk/models/payin_method_details_mobile'
require 'transferzero-sdk/models/payin_method_details_ngn_bank'
require 'transferzero-sdk/models/payin_method_request'
require 'transferzero-sdk/models/payin_method_response'
require 'transferzero-sdk/models/payin_method_state'
require 'transferzero-sdk/models/payin_method_ux_flow'
require 'transferzero-sdk/models/payment_method'
require 'transferzero-sdk/models/payment_method_list_response'
require 'transferzero-sdk/models/payment_method_opposite'
require 'transferzero-sdk/models/payout_method'
require 'transferzero-sdk/models/payout_method_bank_account_type_enum'
require 'transferzero-sdk/models/payout_method_cash_provider_enum'
require 'transferzero-sdk/models/payout_method_country_enum'
require 'transferzero-sdk/models/payout_method_details'
require 'transferzero-sdk/models/payout_method_details_brl_bank'
require 'transferzero-sdk/models/payout_method_details_btc'
require 'transferzero-sdk/models/payout_method_details_bwp_bank'
require 'transferzero-sdk/models/payout_method_details_balance'
require 'transferzero-sdk/models/payout_method_details_cad_bank'
require 'transferzero-sdk/models/payout_method_details_gbp_bank'
require 'transferzero-sdk/models/payout_method_details_ghs_bank'
require 'transferzero-sdk/models/payout_method_details_ghs_cash'
require 'transferzero-sdk/models/payout_method_details_gnf_mobile'
require 'transferzero-sdk/models/payout_method_details_iban'
require 'transferzero-sdk/models/payout_method_details_inr_bank'
require 'transferzero-sdk/models/payout_method_details_kes_bank'
require 'transferzero-sdk/models/payout_method_details_kes_mobile'
require 'transferzero-sdk/models/payout_method_details_mad_cash'
require 'transferzero-sdk/models/payout_method_details_mobile'
require 'transferzero-sdk/models/payout_method_details_ngn_bank'
require 'transferzero-sdk/models/payout_method_details_nzd_bank'
require 'transferzero-sdk/models/payout_method_details_usd_bank'
require 'transferzero-sdk/models/payout_method_details_usd_cash'
require 'transferzero-sdk/models/payout_method_details_xaf_bank'
require 'transferzero-sdk/models/payout_method_details_xaf_mobile'
require 'transferzero-sdk/models/payout_method_details_xof_bank'
require 'transferzero-sdk/models/payout_method_details_xof_cash'
require 'transferzero-sdk/models/payout_method_details_xof_mobile'
require 'transferzero-sdk/models/payout_method_details_zar_bank'
require 'transferzero-sdk/models/payout_method_details_zmw_bank'
require 'transferzero-sdk/models/payout_method_gender_enum'
require 'transferzero-sdk/models/payout_method_identity_card_type_enum'
require 'transferzero-sdk/models/payout_method_legal_entity_type_enum'
require 'transferzero-sdk/models/payout_method_list_response'
require 'transferzero-sdk/models/payout_method_mobile_provider_enum'
require 'transferzero-sdk/models/payout_method_nature_of_business_enum'
require 'transferzero-sdk/models/payout_method_pix_key_type_enum'
require 'transferzero-sdk/models/payout_method_request'
require 'transferzero-sdk/models/payout_method_response'
require 'transferzero-sdk/models/payout_method_transfer_reason_enum'
require 'transferzero-sdk/models/payout_method_webhook'
require 'transferzero-sdk/models/politically_exposed_person'
require 'transferzero-sdk/models/proof_of_payment'
require 'transferzero-sdk/models/proof_of_payment_list_response'
require 'transferzero-sdk/models/recipient'
require 'transferzero-sdk/models/recipient_list_response'
require 'transferzero-sdk/models/recipient_request'
require 'transferzero-sdk/models/recipient_response'
require 'transferzero-sdk/models/recipient_state'
require 'transferzero-sdk/models/recipient_state_reason_details'
require 'transferzero-sdk/models/recipient_webhook'
require 'transferzero-sdk/models/sender'
require 'transferzero-sdk/models/sender_list_response'
require 'transferzero-sdk/models/sender_request'
require 'transferzero-sdk/models/sender_response'
require 'transferzero-sdk/models/sender_response_existing'
require 'transferzero-sdk/models/sender_response_meta'
require 'transferzero-sdk/models/sender_state'
require 'transferzero-sdk/models/sender_webhook'
require 'transferzero-sdk/models/state_reason_details'
require 'transferzero-sdk/models/transaction'
require 'transferzero-sdk/models/transaction_list_response'
require 'transferzero-sdk/models/transaction_request'
require 'transferzero-sdk/models/transaction_response'
require 'transferzero-sdk/models/transaction_response_existing'
require 'transferzero-sdk/models/transaction_response_meta'
require 'transferzero-sdk/models/transaction_state'
require 'transferzero-sdk/models/transaction_traits'
require 'transferzero-sdk/models/transaction_webhook'
require 'transferzero-sdk/models/validation_error_description'
require 'transferzero-sdk/models/webhook'
require 'transferzero-sdk/models/webhook_definition'
require 'transferzero-sdk/models/webhook_definition_event_list_response'
require 'transferzero-sdk/models/webhook_definition_list_response'
require 'transferzero-sdk/models/webhook_definition_request'
require 'transferzero-sdk/models/webhook_definition_response'
require 'transferzero-sdk/models/webhook_log'
require 'transferzero-sdk/models/webhook_log_list_response'
require 'transferzero-sdk/models/webhook_log_metadata'
require 'transferzero-sdk/models/webhook_log_metadata_request'
require 'transferzero-sdk/models/webhook_log_metadata_response'
require 'transferzero-sdk/models/webhook_log_response'

# APIs
require 'transferzero-sdk/api/api_logs_api'
require 'transferzero-sdk/api/account_debits_api'
require 'transferzero-sdk/api/account_validation_api'
require 'transferzero-sdk/api/accounts_api'
require 'transferzero-sdk/api/currency_info_api'
require 'transferzero-sdk/api/documents_api'
require 'transferzero-sdk/api/logs_api'
require 'transferzero-sdk/api/payin_methods_api'
require 'transferzero-sdk/api/payment_methods_api'
require 'transferzero-sdk/api/payout_methods_api'
require 'transferzero-sdk/api/recipients_api'
require 'transferzero-sdk/api/senders_api'
require 'transferzero-sdk/api/transactions_api'
require 'transferzero-sdk/api/webhooks_api'

module TransferZero
  class << self
    # Customize default settings for the SDK using block.
    #   TransferZero.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
