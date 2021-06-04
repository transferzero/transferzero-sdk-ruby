=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
# ```JSON   \"details\": {     \"first_name\": \"First\", //  Mandatory for personal payouts;     \"last_name\": \"Last\", //  Mandatory for personal payouts;     \"name\" \"First Ltd\", // Mandatory for business payouts;     \"contact_first_name\" \"Business\", // Mandatory for business payouts;     \"contact_last_name\" \"Contact\", // Mandatory for business payouts;     \"street\": \"Main Street\",     \"postal_code\": \"AB0001\",     \"city\": \"Cape Town\",     \"email\": \"recipient@email.com\",     \"bank_code\": \"334810\",     \"bank_account\": \"12345678\",     \"phone_number\": \"+27119785313\",     \"transfer_reason_code\": \"185\",     \"entity_type\": \"sole_proprietorship\", // Optional; Default value is \"person\"; Mandatory for business payouts;     \"nature_of_business\": \"Mining\", // Mandatory for business payouts;     \"registration_number\": \"17364BGC\" // Mandatory for business payouts;   } ```  See [ZAR Bank](https://docs.transferzero.com/docs/payout-details/#zarbank) documentation for the bank_code and transfer_reason_code lists
class PayoutMethodDetailsZARBank
  attr_accessor :first_name

  attr_accessor :last_name

  attr_accessor :street

  attr_accessor :postal_code

  attr_accessor :city

  attr_accessor :email

  attr_accessor :bank_code

  attr_accessor :bank_account

  attr_accessor :phone_number

  attr_accessor :transfer_reason_code

  attr_accessor :name

  attr_accessor :contact_first_name

  attr_accessor :contact_last_name

  attr_accessor :registration_number

  attr_accessor :nature_of_business

  attr_accessor :entity_type

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'first_name' => :'first_name',
      :'last_name' => :'last_name',
      :'street' => :'street',
      :'postal_code' => :'postal_code',
      :'city' => :'city',
      :'email' => :'email',
      :'bank_code' => :'bank_code',
      :'bank_account' => :'bank_account',
      :'phone_number' => :'phone_number',
      :'transfer_reason_code' => :'transfer_reason_code',
      :'name' => :'name',
      :'contact_first_name' => :'contact_first_name',
      :'contact_last_name' => :'contact_last_name',
      :'registration_number' => :'registration_number',
      :'nature_of_business' => :'nature_of_business',
      :'entity_type' => :'entity_type'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'first_name' => :'String',
      :'last_name' => :'String',
      :'street' => :'String',
      :'postal_code' => :'String',
      :'city' => :'String',
      :'email' => :'String',
      :'bank_code' => :'String',
      :'bank_account' => :'String',
      :'phone_number' => :'String',
      :'transfer_reason_code' => :'String',
      :'name' => :'String',
      :'contact_first_name' => :'String',
      :'contact_last_name' => :'String',
      :'registration_number' => :'String',
      :'nature_of_business' => :'String',
      :'entity_type' => :'PayoutMethodEntityTypeEnum'
    }
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::PayoutMethodDetailsZARBank` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::PayoutMethodDetailsZARBank`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

    if attributes.key?(:'postal_code')
      self.postal_code = attributes[:'postal_code']
    end

    if attributes.key?(:'city')
      self.city = attributes[:'city']
    end

    if attributes.key?(:'email')
      self.email = attributes[:'email']
    end

    if attributes.key?(:'bank_code')
      self.bank_code = attributes[:'bank_code']
    end

    if attributes.key?(:'bank_account')
      self.bank_account = attributes[:'bank_account']
    end

    if attributes.key?(:'phone_number')
      self.phone_number = attributes[:'phone_number']
    end

    if attributes.key?(:'transfer_reason_code')
      self.transfer_reason_code = attributes[:'transfer_reason_code']
    end

    if attributes.key?(:'name')
      self.name = attributes[:'name']
    end

    if attributes.key?(:'contact_first_name')
      self.contact_first_name = attributes[:'contact_first_name']
    end

    if attributes.key?(:'contact_last_name')
      self.contact_last_name = attributes[:'contact_last_name']
    end

    if attributes.key?(:'registration_number')
      self.registration_number = attributes[:'registration_number']
    end

    if attributes.key?(:'nature_of_business')
      self.nature_of_business = attributes[:'nature_of_business']
    end

    if attributes.key?(:'entity_type')
      self.entity_type = attributes[:'entity_type']
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

    if @postal_code.nil?
      invalid_properties.push('invalid value for "postal_code", postal_code cannot be nil.')
    end

    if @city.nil?
      invalid_properties.push('invalid value for "city", city cannot be nil.')
    end

    if @bank_code.nil?
      invalid_properties.push('invalid value for "bank_code", bank_code cannot be nil.')
    end

    if @bank_account.nil?
      invalid_properties.push('invalid value for "bank_account", bank_account cannot be nil.')
    end

    if @phone_number.nil?
      invalid_properties.push('invalid value for "phone_number", phone_number cannot be nil.')
    end

    invalid_properties
  end

  # Check to see if the all the properties in the model are valid
  # @return true if the model is valid
  def valid?
    return false if @first_name.nil?
    return false if @last_name.nil?
    return false if @street.nil?
    return false if @postal_code.nil?
    return false if @city.nil?
    return false if @bank_code.nil?
    return false if @bank_account.nil?
    return false if @phone_number.nil?
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
        postal_code == o.postal_code &&
        city == o.city &&
        email == o.email &&
        bank_code == o.bank_code &&
        bank_account == o.bank_account &&
        phone_number == o.phone_number &&
        transfer_reason_code == o.transfer_reason_code &&
        name == o.name &&
        contact_first_name == o.contact_first_name &&
        contact_last_name == o.contact_last_name &&
        registration_number == o.registration_number &&
        nature_of_business == o.nature_of_business &&
        entity_type == o.entity_type
  end

  # @see the `==` method
  # @param [Object] Object to be compared
  def eql?(o)
    self == o
  end

  # Calculates hash code according to all attributes.
  # @return [Integer] Hash code
  def hash
    [first_name, last_name, street, postal_code, city, email, bank_code, bank_account, phone_number, transfer_reason_code, name, contact_first_name, contact_last_name, registration_number, nature_of_business, entity_type].hash
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
