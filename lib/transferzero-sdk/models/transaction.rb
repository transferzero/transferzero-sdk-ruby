=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
# The template of transactions are the following: ```JSON {   \"input_currency\": // currency to pay in,   \"sender\":{     // details of the sender   },   \"recipients\":[     {         \"requested_amount\": // the amount to pay out,         \"requested_currency\": // the currency of the amount,         \"payout_method\":{           \"type\": // method of the payout,           \"details\":{               // details of the recipient           }         }     }   ],   \"metadata\": // optional metadata } ```
class Transaction
  # The input currency describes what currency the transaction will be paid in (3-character alpha ISO 4217 currency format). For example if you wish to create an EUR to NGN transaction then input currency should be set to EUR.
  attr_accessor :input_currency

  # Allows setting alternative collections, where funding the transaction is done through alternative means and not via account balance.  For more information please see [Collections from senders](https://docs.transferzero.com/docs/additional-features/#collections-from-senders) in the API documentation
  attr_accessor :payin_methods

  # Additional metadata to store on the transaction. If you widh to store your local transaction ID, you should add it here inside a `sendRef` field, and we will return this value back to you in the daily transaction reports.
  attr_accessor :metadata

  attr_accessor :sender

  # The details of where the payment should go. although transactions can support paying out multiple recipients, usually one is provided. 
  attr_accessor :recipients

  attr_accessor :traits

  attr_accessor :state

  # The amount that was requested in the input currency
  attr_accessor :input_amount

  # The reference number that has to be provided in case the transaction is not funded through account balance
  attr_accessor :payin_reference

  # The amount that was already paid in to the transaction
  attr_accessor :paid_amount

  # The amount needed to be paid in for the transaction to get funded
  attr_accessor :due_amount

  # The time the transaction was created
  attr_accessor :created_at

  # The latest time when the transaction has to be funded, otherwise it will be cancelled
  attr_accessor :expires_at

  # Optional ID that is supplied by partner linking it to the partner's own Transaction ID. Note: if present we will validate whether the sent ID is a duplicate in our system or not.
  attr_accessor :external_id

  attr_accessor :id

  # The fields that have some problems and don't pass validation
  attr_accessor :errors

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'input_currency' => :'input_currency',
      :'payin_methods' => :'payin_methods',
      :'metadata' => :'metadata',
      :'sender' => :'sender',
      :'recipients' => :'recipients',
      :'traits' => :'traits',
      :'state' => :'state',
      :'input_amount' => :'input_amount',
      :'payin_reference' => :'payin_reference',
      :'paid_amount' => :'paid_amount',
      :'due_amount' => :'due_amount',
      :'created_at' => :'created_at',
      :'expires_at' => :'expires_at',
      :'external_id' => :'external_id',
      :'id' => :'id',
      :'errors' => :'errors'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'input_currency' => :'String',
      :'payin_methods' => :'Array<PayinMethod>',
      :'metadata' => :'Object',
      :'sender' => :'Sender',
      :'recipients' => :'Array<Recipient>',
      :'traits' => :'TransactionTraits',
      :'state' => :'TransactionState',
      :'input_amount' => :'Float',
      :'payin_reference' => :'String',
      :'paid_amount' => :'Float',
      :'due_amount' => :'Float',
      :'created_at' => :'DateTime',
      :'expires_at' => :'DateTime',
      :'external_id' => :'String',
      :'id' => :'String',
      :'errors' => :'Hash<String, Array<ValidationErrorDescription>>'
    }
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::Transaction` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::Transaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'input_currency')
      self.input_currency = attributes[:'input_currency']
    end

    if attributes.key?(:'payin_methods')
      if (value = attributes[:'payin_methods']).is_a?(Array)
        self.payin_methods = value
      end
    end

    if attributes.key?(:'metadata')
      self.metadata = attributes[:'metadata']
    end

    if attributes.key?(:'sender')
      self.sender = attributes[:'sender']
    end

    if attributes.key?(:'recipients')
      if (value = attributes[:'recipients']).is_a?(Array)
        self.recipients = value
      end
    end

    if attributes.key?(:'traits')
      self.traits = attributes[:'traits']
    end

    if attributes.key?(:'state')
      self.state = attributes[:'state']
    end

    if attributes.key?(:'input_amount')
      self.input_amount = attributes[:'input_amount']
    end

    if attributes.key?(:'payin_reference')
      self.payin_reference = attributes[:'payin_reference']
    end

    if attributes.key?(:'paid_amount')
      self.paid_amount = attributes[:'paid_amount']
    end

    if attributes.key?(:'due_amount')
      self.due_amount = attributes[:'due_amount']
    end

    if attributes.key?(:'created_at')
      self.created_at = attributes[:'created_at']
    end

    if attributes.key?(:'expires_at')
      self.expires_at = attributes[:'expires_at']
    end

    if attributes.key?(:'external_id')
      self.external_id = attributes[:'external_id']
    end

    if attributes.key?(:'id')
      self.id = attributes[:'id']
    end

    if attributes.key?(:'errors')
      if (value = attributes[:'errors']).is_a?(Hash)
        self.errors = value
      end
    end
  end

  # Show invalid properties with the reasons. Usually used together with valid?
  # @return Array for valid properties with the reasons
  def list_invalid_properties
    invalid_properties = Array.new
    if @input_currency.nil?
      invalid_properties.push('invalid value for "input_currency", input_currency cannot be nil.')
    end

    if @sender.nil?
      invalid_properties.push('invalid value for "sender", sender cannot be nil.')
    end

    if @recipients.nil?
      invalid_properties.push('invalid value for "recipients", recipients cannot be nil.')
    end

    invalid_properties
  end

  # Check to see if the all the properties in the model are valid
  # @return true if the model is valid
  def valid?
    return false if @input_currency.nil?
    return false if @sender.nil?
    return false if @recipients.nil?
    true
  end

  # Checks equality by comparing each attribute.
  # @param [Object] Object to be compared
  def ==(o)
    return true if self.equal?(o)
    self.class == o.class &&
        input_currency == o.input_currency &&
        payin_methods == o.payin_methods &&
        metadata == o.metadata &&
        sender == o.sender &&
        recipients == o.recipients &&
        traits == o.traits &&
        state == o.state &&
        input_amount == o.input_amount &&
        payin_reference == o.payin_reference &&
        paid_amount == o.paid_amount &&
        due_amount == o.due_amount &&
        created_at == o.created_at &&
        expires_at == o.expires_at &&
        external_id == o.external_id &&
        id == o.id &&
        errors == o.errors
  end

  # @see the `==` method
  # @param [Object] Object to be compared
  def eql?(o)
    self == o
  end

  # Calculates hash code according to all attributes.
  # @return [Integer] Hash code
  def hash
    [input_currency, payin_methods, metadata, sender, recipients, traits, state, input_amount, payin_reference, paid_amount, due_amount, created_at, expires_at, external_id, id, errors].hash
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
