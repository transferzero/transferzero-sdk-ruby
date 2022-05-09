=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module TransferZero
class SenderState
  
  INCOMPLETE = "incomplete".freeze
  INITIAL = "initial".freeze
  VERIFIED = "verified".freeze
  APPROVED = "approved".freeze
  BANNED = "banned".freeze
  REJECTED = "rejected".freeze
  DISABLED = "disabled".freeze

  # Builds the enum from string
  # @param [String] The enum value in the form of the string
  # @return [String] The enum value
  def build_from_hash(value)
    constantValues = SenderState.constants.select { |c| SenderState::const_get(c) == value }
    raise "Invalid ENUM value #{value} for class #SenderState" if constantValues.empty? && !value.empty?
    value
  end
end

end
