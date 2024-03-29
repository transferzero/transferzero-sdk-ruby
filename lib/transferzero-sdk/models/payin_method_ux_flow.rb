=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayinMethodUxFlow
  
  USSD_POPUP = "ussd_popup".freeze
  USSD_VOUCHER = "ussd_voucher".freeze
  USSD_MENU_APPROVAL = "ussd_menu_approval".freeze
  OTP_VERIFIED_USSD_POPUP = "otp_verified_ussd_popup".freeze
  BANK_TRANSFER = "bank_transfer".freeze
  HTTP_REDIRECT = "http_redirect".freeze
  BLOCKCHAIN = "blockchain".freeze
  UNKNOWN = "unknown".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = PayinMethodUxFlow.constants.select { |c| PayinMethodUxFlow::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #PayinMethodUxFlow" if constantValues.empty? && !value.empty?
    value
  end
end

end
