=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
# ```JSON   \"details\": {     \"first_name\": \"First\",     \"last_name\": \"Last\",     \"street\": \"Main Street\",     \"city\": \"Nairobi\",     \"bank_code\": \"68\",     \"bank_account\": \"12345678\",     \"transfer_reason\": \"personal_account\", // New transfer reason field     \"identity_card_type\": \"ID\", // refers to the recipient's ID details; Values: \"PP\": Passport, \"ID\": National ID or \"O\": Other     \"identity_card_id\": \"AB12345678\", // refers to the recipient's ID details     \"relationship_to_sender\": \"Relative\" // Optional   } ```  The valid bank_code values are:  - Absa Bank: 03 - African Banking Corporation: 35 - Bank of Africa Kenya: 19 - Citibank: 16 - Co-operative Bank of Kenya: 11 - Consolidated Bank of Kenya: 23 - Credit Bank Ltd: 25 - Diamond Trust Bank: 63 - DIB Bank: 75 - ECO Bank Kenya: 43 - Equity Bank Limited: 68 - Family Bank: 70 - First Community Bank: 74 - Guaranty Trust Bank Kenya: 53 - Guardian Bank: 55 - Gulf African Bank : 72 - Housing Finance Co. Kenya: 61 - I&M Bank: 57 - Kingdom Bank: 51 - Kenya Commercial Bank: 01 - KWFT Bank: 78 - Mayfair Bank: 65 - M-Oriental Commercial Bank Limited: 14 - Middle East Bank: 18 - National Bank of Kenya: 12 - NCBA Bank: 07 - Paramount Universal Bank Limited: 50 - Prime Bank: 10 - Sidian Bank: 66 - Stanbic Bank Kenya: 31 - Standard Chartered Bank: 02 - UBA Kenya Bank Ltd: 76 - Victoria Bank Limited: 54   See [KES Bank](https://docs.transferzero.com/docs/payout-details/#kesbank) documentation for the transfer_reason list
class PayoutMethodDetailsKESBank
  attr_accessor :first_name

  attr_accessor :last_name

  attr_accessor :street

  attr_accessor :city

  attr_accessor :bank_code

  attr_accessor :bank_account

  attr_accessor :transfer_reason

  attr_accessor :identity_card_type

  attr_accessor :identity_card_id

  attr_accessor :relationship_to_sender

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'first_name' => :'first_name',
      :'last_name' => :'last_name',
      :'street' => :'street',
      :'city' => :'city',
      :'bank_code' => :'bank_code',
      :'bank_account' => :'bank_account',
      :'transfer_reason' => :'transfer_reason',
      :'identity_card_type' => :'identity_card_type',
      :'identity_card_id' => :'identity_card_id',
      :'relationship_to_sender' => :'relationship_to_sender'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'first_name' => :'String',
      :'last_name' => :'String',
      :'street' => :'String',
      :'city' => :'String',
      :'bank_code' => :'String',
      :'bank_account' => :'String',
      :'transfer_reason' => :'PayoutMethodTransferReasonEnum',
      :'identity_card_type' => :'PayoutMethodIdentityCardTypeEnum',
      :'identity_card_id' => :'String',
      :'relationship_to_sender' => :'String'
    }
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::PayoutMethodDetailsKESBank` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::PayoutMethodDetailsKESBank`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'first_name')
      self.first_name = attributes[:'first_name']
    end

    if attributes.key?(:'last_name')
      self.last_name = attributes[:'last_name']
    end

    if attributes.key?(:'street')
      self.street = attributes[:'street']
    end

    if attributes.key?(:'city')
      self.city = attributes[:'city']
    end

    if attributes.key?(:'bank_code')
      self.bank_code = attributes[:'bank_code']
    end

    if attributes.key?(:'bank_account')
      self.bank_account = attributes[:'bank_account']
    end

    if attributes.key?(:'transfer_reason')
      self.transfer_reason = attributes[:'transfer_reason']
    end

    if attributes.key?(:'identity_card_type')
      self.identity_card_type = attributes[:'identity_card_type']
    end

    if attributes.key?(:'identity_card_id')
      self.identity_card_id = attributes[:'identity_card_id']
    end

    if attributes.key?(:'relationship_to_sender')
      self.relationship_to_sender = attributes[:'relationship_to_sender']
    end
  end

  # Show invalid properties with the reasons. Usually used together with valid?
  # @return Array for valid properties with the reasons
  def list_invalid_properties
    invalid_properties = Array.new
    if @first_name.nil?
      invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
    end

    if @last_name.nil?
      invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
    end

    if @street.nil?
      invalid_properties.push('invalid value for "street", street cannot be nil.')
    end

    if @bank_code.nil?
      invalid_properties.push('invalid value for "bank_code", bank_code cannot be nil.')
    end

    if @bank_account.nil?
      invalid_properties.push('invalid value for "bank_account", bank_account cannot be nil.')
    end

    if @transfer_reason.nil?
      invalid_properties.push('invalid value for "transfer_reason", transfer_reason cannot be nil.')
    end

    if @identity_card_type.nil?
      invalid_properties.push('invalid value for "identity_card_type", identity_card_type cannot be nil.')
    end

    if @identity_card_id.nil?
      invalid_properties.push('invalid value for "identity_card_id", identity_card_id cannot be nil.')
    end

    invalid_properties
  end

  # Check to see if the all the properties in the model are valid
  # @return true if the model is valid
  def valid?
    return false if @first_name.nil?
    return false if @last_name.nil?
    return false if @street.nil?
    return false if @bank_code.nil?
    return false if @bank_account.nil?
    return false if @transfer_reason.nil?
    return false if @identity_card_type.nil?
    return false if @identity_card_id.nil?
    true
  end

  # Checks equality by comparing each attribute.
  # @param [Object] Object to be compared
  def ==(o)
    return true if self.equal?(o)
    self.class == o.class &&
        first_name == o.first_name &&
        last_name == o.last_name &&
        street == o.street &&
        city == o.city &&
        bank_code == o.bank_code &&
        bank_account == o.bank_account &&
        transfer_reason == o.transfer_reason &&
        identity_card_type == o.identity_card_type &&
        identity_card_id == o.identity_card_id &&
        relationship_to_sender == o.relationship_to_sender
  end

  # @see the `==` method
  # @param [Object] Object to be compared
  def eql?(o)
    self == o
  end

  # Calculates hash code according to all attributes.
  # @return [Integer] Hash code
  def hash
    [first_name, last_name, street, city, bank_code, bank_account, transfer_reason, identity_card_type, identity_card_id, relationship_to_sender].hash
  end

require 'active_support/core_ext/hash'
require 'active_support/hash_with_indifferent_access.rb'
# Builds the object from hash
# @param [Hash] attributes Model attributes in the form of hash
# @return [Object] Returns the model itself
def build_from_hash(attributes)
  return nil unless attributes.is_a?(Hash)
  self.class.openapi_types.each_pair do |key, type|
    if type =~ /\AArray<(.*)>/i
      # check to ensure the input is an array given that the the attribute
      # is documented as an array but the input is not
      if attributes[self.class.attribute_map[key]].is_a?(Array)
        self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
      end
    elsif !attributes[self.class.attribute_map[key]].nil?
      self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
    end # or else data not found in attributes(hash), not an issue as the data can be optional
  end

  self
end

# Deserializes the data based on type
# @param string type Data type
# @param string value Value to be deserialized
# @return [Object] Deserialized data
def _deserialize(type, value)
  case type.to_sym
  when :DateTime
    DateTime.parse(value)
  when :Date
    Date.parse(value)
  when :String
    value.to_s
  when :Integer
    value.to_i
  when :Float
    value.to_f
  when :Boolean
    if value.to_s =~ /\A(true|t|yes|y|1)\z/i
      true
    else
      false
    end
  when :Object
    # generic object (usually a Hash), return directly
    value
  when /\AArray<(?<inner_type>.+)>\z/
    inner_type = Regexp.last_match[:inner_type]
    value.map { |v| _deserialize(inner_type, v) }
  when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
    k_type = Regexp.last_match[:k_type]
    v_type = Regexp.last_match[:v_type]
    {}.tap do |hash|
      value.each do |k, v|
        hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
      end
    end
  else # model
    temp_model = TransferZero.const_get(type).new
    temp_model.build_from_hash(value)
  end
end

# Returns the string representation of the object
# @return [String] String presentation of the object
def to_s
  to_hash.to_s
end

# to_body is an alias to to_hash (backward compatibility)
# @return [Hash] Returns the object in the form of hash
def to_body
  to_hash
end

# Returns the object in the form of hash
# @return [Hash] Returns the object in the form of hash
def to_hash
  hash = {}
  self.class.attribute_map.each_pair do |attr, param|
    value = self.send(attr)
    next if value.nil?
    hash[param] = _to_hash(value)
  end
  ::ActiveSupport::HashWithIndifferentAccess.new(hash)
end

def [](key)
  to_hash[key]
end

def dig(*args)
  to_hash.dig(*args)
end

# Outputs non-array value in the form of hash
# For object, use to_hash. Otherwise, just return the value
# @param [Object] value Any valid value
# @return [Hash] Returns the value in the form of hash
def _to_hash(value)
  if value.is_a?(Array)
    value.compact.map { |v| _to_hash(v) }
  elsif value.is_a?(Hash)
    {}.tap do |hash|
      value.each { |k, v| hash[k] = _to_hash(v) }
    end
  elsif value.respond_to? :to_hash
    value.to_hash
  else
    value
  end
end

end

end
