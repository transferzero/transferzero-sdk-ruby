=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class PayoutMethodDetails
  attr_accessor :first_name

  attr_accessor :last_name

  attr_accessor :bank_code

  attr_accessor :bank_account

  attr_accessor :bank_account_type

  attr_accessor :phone_number

  attr_accessor :mobile_provider

  attr_accessor :country

  attr_accessor :iban

  attr_accessor :bank_name

  attr_accessor :bank_country

  attr_accessor :cash_provider

  attr_accessor :sort_code

  attr_accessor :bic

  attr_accessor :sender_identity_card_type

  attr_accessor :sender_identity_card_id

  attr_accessor :sender_city_of_birth

  attr_accessor :sender_country_of_birth

  attr_accessor :sender_gender

  attr_accessor :reason

  attr_accessor :identity_card_type

  attr_accessor :identity_card_id

  attr_accessor :reference

  attr_accessor :name

  attr_accessor :address

  attr_accessor :street

  attr_accessor :postal_code

  attr_accessor :city

  attr_accessor :email

  attr_accessor :transfer_reason_code

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'first_name' => :'first_name',
      :'last_name' => :'last_name',
      :'bank_code' => :'bank_code',
      :'bank_account' => :'bank_account',
      :'bank_account_type' => :'bank_account_type',
      :'phone_number' => :'phone_number',
      :'mobile_provider' => :'mobile_provider',
      :'country' => :'country',
      :'iban' => :'iban',
      :'bank_name' => :'bank_name',
      :'bank_country' => :'bank_country',
      :'cash_provider' => :'cash_provider',
      :'sort_code' => :'sort_code',
      :'bic' => :'bic',
      :'sender_identity_card_type' => :'sender_identity_card_type',
      :'sender_identity_card_id' => :'sender_identity_card_id',
      :'sender_city_of_birth' => :'sender_city_of_birth',
      :'sender_country_of_birth' => :'sender_country_of_birth',
      :'sender_gender' => :'sender_gender',
      :'reason' => :'reason',
      :'identity_card_type' => :'identity_card_type',
      :'identity_card_id' => :'identity_card_id',
      :'reference' => :'reference',
      :'name' => :'name',
      :'address' => :'address',
      :'street' => :'street',
      :'postal_code' => :'postal_code',
      :'city' => :'city',
      :'email' => :'email',
      :'transfer_reason_code' => :'transfer_reason_code'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'first_name' => :'String',
      :'last_name' => :'String',
      :'bank_code' => :'String',
      :'bank_account' => :'String',
      :'bank_account_type' => :'PayoutMethodBankAccountTypeEnum',
      :'phone_number' => :'String',
      :'mobile_provider' => :'PayoutMethodMobileProviderEnum',
      :'country' => :'PayoutMethodCountryEnum',
      :'iban' => :'String',
      :'bank_name' => :'String',
      :'bank_country' => :'String',
      :'cash_provider' => :'PayoutMethodCashProviderEnum',
      :'sort_code' => :'String',
      :'bic' => :'String',
      :'sender_identity_card_type' => :'PayoutMethodIdentityCardTypeEnum',
      :'sender_identity_card_id' => :'String',
      :'sender_city_of_birth' => :'String',
      :'sender_country_of_birth' => :'String',
      :'sender_gender' => :'PayoutMethodGenderEnum',
      :'reason' => :'String',
      :'identity_card_type' => :'PayoutMethodIdentityCardTypeEnum',
      :'identity_card_id' => :'String',
      :'reference' => :'String',
      :'name' => :'String',
      :'address' => :'String',
      :'street' => :'String',
      :'postal_code' => :'String',
      :'city' => :'String',
      :'email' => :'String',
      :'transfer_reason_code' => :'String'
    }
  end

  # List of class defined in oneOf (OpenAPI v3)
  def self.openapi_one_of
    [
    :'PayoutMethodDetailsBTC',
    :'PayoutMethodDetailsBalance',
    :'PayoutMethodDetailsGBPBank',
    :'PayoutMethodDetailsGHSBank',
    :'PayoutMethodDetailsGHSCash',
    :'PayoutMethodDetailsIBAN',
    :'PayoutMethodDetailsMADCash',
    :'PayoutMethodDetailsMobile',
    :'PayoutMethodDetailsNGNBank',
    :'PayoutMethodDetailsXOFBank',
    :'PayoutMethodDetailsXOFCash',
    :'PayoutMethodDetailsXOFMobile',
    :'PayoutMethodDetailsZARBank'
    ]
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::PayoutMethodDetails` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::PayoutMethodDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'first_name')
      self.first_name = attributes[:'first_name']
    end

    if attributes.key?(:'last_name')
      self.last_name = attributes[:'last_name']
    end

    if attributes.key?(:'bank_code')
      self.bank_code = attributes[:'bank_code']
    end

    if attributes.key?(:'bank_account')
      self.bank_account = attributes[:'bank_account']
    end

    if attributes.key?(:'bank_account_type')
      self.bank_account_type = attributes[:'bank_account_type']
    end

    if attributes.key?(:'phone_number')
      self.phone_number = attributes[:'phone_number']
    end

    if attributes.key?(:'mobile_provider')
      self.mobile_provider = attributes[:'mobile_provider']
    end

    if attributes.key?(:'country')
      self.country = attributes[:'country']
    end

    if attributes.key?(:'iban')
      self.iban = attributes[:'iban']
    end

    if attributes.key?(:'bank_name')
      self.bank_name = attributes[:'bank_name']
    end

    if attributes.key?(:'bank_country')
      self.bank_country = attributes[:'bank_country']
    end

    if attributes.key?(:'cash_provider')
      self.cash_provider = attributes[:'cash_provider']
    end

    if attributes.key?(:'sort_code')
      self.sort_code = attributes[:'sort_code']
    end

    if attributes.key?(:'bic')
      self.bic = attributes[:'bic']
    end

    if attributes.key?(:'sender_identity_card_type')
      self.sender_identity_card_type = attributes[:'sender_identity_card_type']
    end

    if attributes.key?(:'sender_identity_card_id')
      self.sender_identity_card_id = attributes[:'sender_identity_card_id']
    end

    if attributes.key?(:'sender_city_of_birth')
      self.sender_city_of_birth = attributes[:'sender_city_of_birth']
    end

    if attributes.key?(:'sender_country_of_birth')
      self.sender_country_of_birth = attributes[:'sender_country_of_birth']
    end

    if attributes.key?(:'sender_gender')
      self.sender_gender = attributes[:'sender_gender']
    end

    if attributes.key?(:'reason')
      self.reason = attributes[:'reason']
    end

    if attributes.key?(:'identity_card_type')
      self.identity_card_type = attributes[:'identity_card_type']
    end

    if attributes.key?(:'identity_card_id')
      self.identity_card_id = attributes[:'identity_card_id']
    end

    if attributes.key?(:'reference')
      self.reference = attributes[:'reference']
    end

    if attributes.key?(:'name')
      self.name = attributes[:'name']
    end

    if attributes.key?(:'address')
      self.address = attributes[:'address']
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

    if attributes.key?(:'transfer_reason_code')
      self.transfer_reason_code = attributes[:'transfer_reason_code']
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

    if @bank_code.nil?
      invalid_properties.push('invalid value for "bank_code", bank_code cannot be nil.')
    end

    if @bank_account.nil?
      invalid_properties.push('invalid value for "bank_account", bank_account cannot be nil.')
    end

    if @phone_number.nil?
      invalid_properties.push('invalid value for "phone_number", phone_number cannot be nil.')
    end

    if @mobile_provider.nil?
      invalid_properties.push('invalid value for "mobile_provider", mobile_provider cannot be nil.')
    end

    if @iban.nil?
      invalid_properties.push('invalid value for "iban", iban cannot be nil.')
    end

    if @bank_name.nil?
      invalid_properties.push('invalid value for "bank_name", bank_name cannot be nil.')
    end

    if @bank_country.nil?
      invalid_properties.push('invalid value for "bank_country", bank_country cannot be nil.')
    end

    if @sender_identity_card_type.nil?
      invalid_properties.push('invalid value for "sender_identity_card_type", sender_identity_card_type cannot be nil.')
    end

    if @sender_identity_card_id.nil?
      invalid_properties.push('invalid value for "sender_identity_card_id", sender_identity_card_id cannot be nil.')
    end

    if @sender_city_of_birth.nil?
      invalid_properties.push('invalid value for "sender_city_of_birth", sender_city_of_birth cannot be nil.')
    end

    if @sender_country_of_birth.nil?
      invalid_properties.push('invalid value for "sender_country_of_birth", sender_country_of_birth cannot be nil.')
    end

    if @sender_gender.nil?
      invalid_properties.push('invalid value for "sender_gender", sender_gender cannot be nil.')
    end

    if @name.nil?
      invalid_properties.push('invalid value for "name", name cannot be nil.')
    end

    if @address.nil?
      invalid_properties.push('invalid value for "address", address cannot be nil.')
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

    invalid_properties
  end

  # Check to see if the all the properties in the model are valid
  # @return true if the model is valid
  def valid?
    return false if @first_name.nil?
    return false if @last_name.nil?
    return false if @bank_code.nil?
    return false if @bank_account.nil?
    return false if @phone_number.nil?
    return false if @mobile_provider.nil?
    return false if @iban.nil?
    return false if @bank_name.nil?
    return false if @bank_country.nil?
    return false if @sender_identity_card_type.nil?
    return false if @sender_identity_card_id.nil?
    return false if @sender_city_of_birth.nil?
    return false if @sender_country_of_birth.nil?
    return false if @sender_gender.nil?
    return false if @name.nil?
    return false if @address.nil?
    return false if @street.nil?
    return false if @postal_code.nil?
    return false if @city.nil?
    _one_of_found = false
    openapi_one_of.each do |_class|
      _one_of = TransferZero.const_get(_class).build_from_hash(self.to_hash)
      if _one_of.valid?
        if _one_of_found?
          return false
        else
          _one_of_found = true
        end
      end
    end

    if !_one_of_found?
      return false
    end

    true
  end

  # Checks equality by comparing each attribute.
  # @param [Object] Object to be compared
  def ==(o)
    return true if self.equal?(o)
    self.class == o.class &&
        first_name == o.first_name &&
        last_name == o.last_name &&
        bank_code == o.bank_code &&
        bank_account == o.bank_account &&
        bank_account_type == o.bank_account_type &&
        phone_number == o.phone_number &&
        mobile_provider == o.mobile_provider &&
        country == o.country &&
        iban == o.iban &&
        bank_name == o.bank_name &&
        bank_country == o.bank_country &&
        cash_provider == o.cash_provider &&
        sort_code == o.sort_code &&
        bic == o.bic &&
        sender_identity_card_type == o.sender_identity_card_type &&
        sender_identity_card_id == o.sender_identity_card_id &&
        sender_city_of_birth == o.sender_city_of_birth &&
        sender_country_of_birth == o.sender_country_of_birth &&
        sender_gender == o.sender_gender &&
        reason == o.reason &&
        identity_card_type == o.identity_card_type &&
        identity_card_id == o.identity_card_id &&
        reference == o.reference &&
        name == o.name &&
        address == o.address &&
        street == o.street &&
        postal_code == o.postal_code &&
        city == o.city &&
        email == o.email &&
        transfer_reason_code == o.transfer_reason_code
  end

  # @see the `==` method
  # @param [Object] Object to be compared
  def eql?(o)
    self == o
  end

  # Calculates hash code according to all attributes.
  # @return [Integer] Hash code
  def hash
    [first_name, last_name, bank_code, bank_account, bank_account_type, phone_number, mobile_provider, country, iban, bank_name, bank_country, cash_provider, sort_code, bic, sender_identity_card_type, sender_identity_card_id, sender_city_of_birth, sender_country_of_birth, sender_gender, reason, identity_card_type, identity_card_id, reference, name, address, street, postal_code, city, email, transfer_reason_code].hash
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
