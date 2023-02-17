=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
# This describes the specific details on how the payment has to be routed to the recipient.
class PayoutMethod
  # Contains the currency to send the money to, and the type of the money movement  Commonly used payout types are:  - `NGN::Bank` - for Nigerian bank account payments. - `GHS::Bank` - for Ghanaian bank account payments. - `GHS::Mobile` - for Ghanaian mobile money payments. - `GHS::Cash` - for Ghanaian cash remittance payments. - `UGX::Mobile` - for Ugandan mobile money payments. - `XOF::Mobile` - for mobile money payments to West-Africa. - `XOF::Bank` - for Senegalese bank account payments. - `XOF::Cash` - for Senegalese cash remittance payments. - `MAD::Cash` - for Moroccan cash remittance payments. - `EUR::Bank` - for IBAN bank transfers in EUR. - `GBP::Bank` - for IBAN bank and FP accounts transfers in GBP. - `ZAR::Bank` - for South Africa bank account payments. - `USD::Bank` - for USD account payments. *** Currently Nigeria only and in Beta phase *** - `USD::Cash` - for USD cash remittance payments. *** Currently Nigeria only and in Beta phase *** - `KES::Bank` - for Kenyan bank account payments. - `KES::Mobile` - for Kenyan mobile money payments. - `XAF::Mobile` - for mobile money payments to Cameroon. - `XAF::Bank` - for Cameroon bank account payments.. - `GNF::Mobile` - for mobile money payments to Guinea. - `BRL::Bank` - for Brazilian bank account payments. - `NZD::Bank` - for New Zealand bank account payments. - `INR::Bank` - for Indian bank account payments.  You can also send funds to the internal balance using `CCY::Balance`, where `CCY` is the appropriate currency. See [Collection from senders](https://docs.transferzero.com/docs/additional-features/#collections-from-senders) for more info on how to collect money into internal balance 
  attr_accessor :type

  attr_accessor :details

  # Metadata of payout method. You can store any kind of information in this field.
  attr_accessor :metadata

  attr_accessor :id

  # The fields that have some problems and don't pass validation
  attr_accessor :errors

  # The fields needed for payments with this payment method with details on validation requirements
  attr_accessor :fields

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'type' => :'type',
      :'details' => :'details',
      :'metadata' => :'metadata',
      :'id' => :'id',
      :'errors' => :'errors',
      :'fields' => :'fields'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'type' => :'String',
      :'details' => :'PayoutMethodDetails',
      :'metadata' => :'Object',
      :'id' => :'String',
      :'errors' => :'Hash<String, Array<ValidationErrorDescription>>',
      :'fields' => :'Hash<String, FieldDescription>'
    }
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::PayoutMethod` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::PayoutMethod`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'type')
      self.type = attributes[:'type']
    end

    if attributes.key?(:'details')
      self.details = attributes[:'details']
    end

    if attributes.key?(:'metadata')
      self.metadata = attributes[:'metadata']
    end

    if attributes.key?(:'id')
      self.id = attributes[:'id']
    end

    if attributes.key?(:'errors')
      if (value = attributes[:'errors']).is_a?(Hash)
        self.errors = value
      end
    end

    if attributes.key?(:'fields')
      if (value = attributes[:'fields']).is_a?(Hash)
        self.fields = value
      end
    end
  end

  # Show invalid properties with the reasons. Usually used together with valid?
  # @return Array for valid properties with the reasons
  def list_invalid_properties
    invalid_properties = Array.new
    invalid_properties
  end

  # Check to see if the all the properties in the model are valid
  # @return true if the model is valid
  def valid?
    true
  end

  # Checks equality by comparing each attribute.
  # @param [Object] Object to be compared
  def ==(o)
    return true if self.equal?(o)
    self.class == o.class &&
        type == o.type &&
        details == o.details &&
        metadata == o.metadata &&
        id == o.id &&
        errors == o.errors &&
        fields == o.fields
  end

  # @see the `==` method
  # @param [Object] Object to be compared
  def eql?(o)
    self == o
  end

  # Calculates hash code according to all attributes.
  # @return [Integer] Hash code
  def hash
    [type, details, metadata, id, errors, fields].hash
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
