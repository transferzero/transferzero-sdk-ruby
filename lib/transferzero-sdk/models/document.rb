=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
class Document
  # Base64 encoded data uri of an image/pdf file or a fully qualified url
  attr_accessor :upload

  # URL of the document location
  attr_accessor :url

  # Name of the upload
  attr_accessor :upload_file_name

  # Metadata of document
  attr_accessor :metadata

  attr_accessor :upload_content_type

  attr_accessor :upload_file_size

  # uncategorised
  attr_accessor :category

  # The side of the KYC ID. One of 'front' or 'back'
  attr_accessor :side

  # This is a brief description of the document type
  attr_accessor :document_type

  # Issuing country of ID in 2-character alpha ISO 3166-2 country format
  attr_accessor :issuing_country

  attr_accessor :id

  # The fields that have some problems and don't pass validation
  attr_accessor :errors

  class EnumAttributeValidator
    attr_reader :datatype
    attr_reader :allowable_values

    def initialize(datatype, allowable_values)
      @allowable_values = allowable_values.map do |value|
        case datatype.to_s
        when /Integer/i
          value.to_i
        when /Float/i
          value.to_f
        else
          value
        end
      end
    end

    def valid?(value)
      !value || allowable_values.include?(value)
    end
  end

  # Attribute mapping from ruby-style variable name to JSON key.
  def self.attribute_map
    {
      :'upload' => :'upload',
      :'url' => :'url',
      :'upload_file_name' => :'upload_file_name',
      :'metadata' => :'metadata',
      :'upload_content_type' => :'upload_content_type',
      :'upload_file_size' => :'upload_file_size',
      :'category' => :'category',
      :'side' => :'side',
      :'document_type' => :'document_type',
      :'issuing_country' => :'issuing_country',
      :'id' => :'id',
      :'errors' => :'errors'
    }
  end

  # Attribute type mapping.
  def self.openapi_types
    {
      :'upload' => :'String',
      :'url' => :'String',
      :'upload_file_name' => :'String',
      :'metadata' => :'Object',
      :'upload_content_type' => :'String',
      :'upload_file_size' => :'Integer',
      :'category' => :'String',
      :'side' => :'String',
      :'document_type' => :'String',
      :'issuing_country' => :'String',
      :'id' => :'String',
      :'errors' => :'Hash<String, Array<ValidationErrorDescription>>'
    }
  end

  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::Document` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::Document`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'upload')
      self.upload = attributes[:'upload']
    end

    if attributes.key?(:'url')
      self.url = attributes[:'url']
    end

    if attributes.key?(:'upload_file_name')
      self.upload_file_name = attributes[:'upload_file_name']
    end

    if attributes.key?(:'metadata')
      self.metadata = attributes[:'metadata']
    end

    if attributes.key?(:'upload_content_type')
      self.upload_content_type = attributes[:'upload_content_type']
    end

    if attributes.key?(:'upload_file_size')
      self.upload_file_size = attributes[:'upload_file_size']
    end

    if attributes.key?(:'category')
      self.category = attributes[:'category']
    end

    if attributes.key?(:'side')
      self.side = attributes[:'side']
    end

    if attributes.key?(:'document_type')
      self.document_type = attributes[:'document_type']
    end

    if attributes.key?(:'issuing_country')
      self.issuing_country = attributes[:'issuing_country']
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
    if @upload.nil?
      invalid_properties.push('invalid value for "upload", upload cannot be nil.')
    end

    if @upload_file_name.nil?
      invalid_properties.push('invalid value for "upload_file_name", upload_file_name cannot be nil.')
    end

    invalid_properties
  end

  # Check to see if the all the properties in the model are valid
  # @return true if the model is valid
  def valid?
    return false if @upload.nil?
    return false if @upload_file_name.nil?
    side_validator = EnumAttributeValidator.new('String', ["front", "back"])
    return false unless side_validator.valid?(@side)
    true
  end

  # Custom attribute writer method checking allowed values (enum).
  # @param [Object] side Object to be assigned
  def side=(side)
    validator = EnumAttributeValidator.new('String', ["front", "back"])
    unless validator.valid?(side && !side.empty?
      fail ArgumentError, "invalid value for \"side\", must be one of #{validator.allowable_values}."
    end
    @side = side
  end

  # Checks equality by comparing each attribute.
  # @param [Object] Object to be compared
  def ==(o)
    return true if self.equal?(o)
    self.class == o.class &&
        upload == o.upload &&
        url == o.url &&
        upload_file_name == o.upload_file_name &&
        metadata == o.metadata &&
        upload_content_type == o.upload_content_type &&
        upload_file_size == o.upload_file_size &&
        category == o.category &&
        side == o.side &&
        document_type == o.document_type &&
        issuing_country == o.issuing_country &&
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
    [upload, url, upload_file_name, metadata, upload_content_type, upload_file_size, category, side, document_type, issuing_country, id, errors].hash
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
