=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
# Fields needed by the payment processor. Depends on the chose payin type.  See the appropriate model details for more info:  - `NGN::Bank`: see [`PayinMethodDetailsNGNBank`](#model-PayinMethodDetailsNGNBank) - `GHS::Mobile`: see [`PayinMethodDetailsMobile`](#model-PayinMethodDetailsMobile) - `UGX::Mobile`: see [`PayinMethodDetailsMobile`](#model-PayinMethodDetailsMobile)  Note that some payin processors don't require additional input, these include `lhv` through `EUR::Bank` and `GBP::Bank`. Some providers like `providus` also have all of their fields set as optional, so you might not want to set any values. To use these providers please set this value to `{}` (an empty hash) 
class PayinMethodDetails
  # The payment method which the sender will use to make the payments. Options are `bank`, `card` or you can leave empty to support both.
  attr_accessor :payment_method

  # This is where the sender should be redirected back when the payment has been finished
  attr_accessor :redirect_url

  # The phone number where the funds should be collected from
  attr_accessor :phone_number

  attr_accessor :mobile_provider

  attr_accessor :country

  # The OTP that the sender received in otp verified ussd popup ux flow.
  attr_accessor :otp

  # Please make sure the refund_address is a valid BTC address belonging to the sender, as that is going to be used in case the transaction has to be refunded.
  attr_accessor :refund_address

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'payment_method' => :'payment_method',
      :'redirect_url' => :'redirect_url',
      :'phone_number' => :'phone_number',
      :'mobile_provider' => :'mobile_provider',
      :'country' => :'country',
      :'otp' => :'otp',
      :'refund_address' => :'refund_address'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'payment_method' => :'String',
      :'redirect_url' => :'String',
      :'phone_number' => :'String',
      :'mobile_provider' => :'PayoutMethodMobileProviderEnum',
      :'country' => :'PayoutMethodCountryEnum',
      :'otp' => :'String',
      :'refund_address' => :'String'
    }
  end

  # List of class defined in oneOf (OpenAPI v3)
  def self.openapi_one_of
    [
    :'PayinMethodDetailsBTC',
    :'PayinMethodDetailsMobile',
    :'PayinMethodDetailsNGNBank'
    ]
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::PayinMethodDetails` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::PayinMethodDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'payment_method')
      self.payment_method = attributes[:'payment_method']
    end

    if attributes.key?(:'redirect_url')
      self.redirect_url = attributes[:'redirect_url']
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

    if attributes.key?(:'otp')
      self.otp = attributes[:'otp']
    end

    if attributes.key?(:'refund_address')
      self.refund_address = attributes[:'refund_address']
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
        payment_method == o.payment_method &&
        redirect_url == o.redirect_url &&
        phone_number == o.phone_number &&
        mobile_provider == o.mobile_provider &&
        country == o.country &&
        otp == o.otp &&
        refund_address == o.refund_address
  end

  # @see the `==` method
  # @param [Object] Object to be compared
  def eql?(o)
    self == o
  end

  # Calculates hash code according to all attributes.
  # @return [Integer] Hash code
  def hash
    [payment_method, redirect_url, phone_number, mobile_provider, country, otp, refund_address].hash
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
