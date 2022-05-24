=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayoutMethodLegalEntityTypeEnum
  
  PERSON = "person".freeze
  SOLE_PROPRIETORSHIP = "sole_proprietorship".freeze
  PRIVATELY_OWNED_COMPANY = "privately_owned_company".freeze
  PUBLICLY_OWNED_COMPANY = "publicly_owned_company".freeze
  GOVERNMENT_OWNED_ENTITY = "government_owned_entity".freeze
  PARTNERSHIP = "partnership".freeze
  GO = "go".freeze
  FINANCIAL_INSTITUTION = "financial_institution".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = PayoutMethodLegalEntityTypeEnum.constants.select { |c| PayoutMethodLegalEntityTypeEnum::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #PayoutMethodLegalEntityTypeEnum" if constantValues.empty? && !value.empty?
    value
  end
end

end
