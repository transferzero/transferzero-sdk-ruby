=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayoutMethodMobileProviderEnum
  
  AFRICELL = "africell".freeze
  AIRTEL = "airtel".freeze
  AIRTELTIGO = "airteltigo".freeze
  EMONEY = "emoney".freeze
  EXPRESSO = "expresso".freeze
  FREE = "free".freeze
  MOBICASH = "mobicash".freeze
  MOOV = "moov".freeze
  MPESA = "mpesa".freeze
  MTN = "mtn".freeze
  ORANGE = "orange".freeze
  TELECOM = "telecom".freeze
  TIGO = "tigo".freeze
  TMONEY = "tmoney".freeze
  VODAFONE = "vodafone".freeze
  WAVE = "wave".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = PayoutMethodMobileProviderEnum.constants.select { |c| PayoutMethodMobileProviderEnum::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #PayoutMethodMobileProviderEnum" if constantValues.empty? && !value.empty?
    value
  end
end

end
