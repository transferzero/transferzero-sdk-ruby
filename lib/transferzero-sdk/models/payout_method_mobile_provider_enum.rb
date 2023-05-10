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
  
  ORANGE = "orange".freeze
  TIGO = "tigo".freeze
  MOOV = "moov".freeze
  MTN = "mtn".freeze
  AIRTEL = "airtel".freeze
  VODAFONE = "vodafone".freeze
  MPESA = "mpesa".freeze
  AFRICELL = "africell".freeze
  TELECOM = "telecom".freeze
  MOBICASH = "mobicash".freeze
  EMONEY = "emoney".freeze
  FREE = "free".freeze
  WAVE = "wave".freeze
  EXPRESSO = "expresso".freeze
  TMONEY = "tmoney".freeze

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
