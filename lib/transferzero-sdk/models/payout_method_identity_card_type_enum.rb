=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayoutMethodIdentityCardTypeEnum
  
  O = "O".freeze
  PP = "PP".freeze
  NI = "NI".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = PayoutMethodIdentityCardTypeEnum.constants.select { |c| PayoutMethodIdentityCardTypeEnum::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #PayoutMethodIdentityCardTypeEnum" if constantValues.empty? && !value.empty?
    value
  end
end

end
