=begin
#TransferZero API

#Reference documentation for the TransferZero API V1

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'date'

module TransferZero
  # This contains the details of the sender. The first time a specific sender is used the full details should be provided. Once a sender is created and is used, the next time you MUST only send the ID of the sender. This is so we can match the same sender across multiple transactions for KYC and audit purposes.  Personal Sender Example: ```json {   \"country\": \"UG\",   \"phone_country\": \"UG\",   \"phone_number\": \"752403639\",   \"email\": \"example@home.org\",   \"first_name\": \"Johnny\",   \"last_name\": \"English\",   \"city\": \"Kampala\",   \"street\": \"Unknown 17-3\",   \"address_description\": \"Description of address\",   \"postal_code\": \"798983\",   \"birth_date\": \"1900-12-31\",   \"documents\": [ ],   \"ip\": \"127.0.0.1\",   \"identification_number\": \"AB123456\",   \"identification_type\": \"ID\",   \"external_id\": \"806ec63a-a5a7-43cc-9d75-1ee74fbcc026\",   \"metadata\": { } } ```  Business Sender Example:  ```json {   \"type\": \"business\",   \"country\": \"UG\",   \"phone_country\": \"UG\",   \"phone_number\": \"752403639\",   \"email\": \"example@home.org\",   \"name\": \"MyCompany\",   \"city\": \"Kampala\",   \"street\": \"Unknown 17-3\",   \"postal_code\": \"798983\",   \"address_description\": \"Description of address\",   \"documents\": [ ],   \"ip\": \"127.0.0.1\",   \"identification_number\": \"AB123456\",   \"identification_type\": \"ID\",   \"external_id\": \"806ec63a-a5a7-43cc-9d75-1ee74fbcc026\",   \"metadata\": { } } ```  [Sender in the API documentation](https://docs.transferzero.com/docs/transaction-flow/#sender)
  class Sender
    # Type of sender to create - either person or business (defaults to person) 
    attr_accessor :type

    # Country of sender in 2-character alpha ISO 3166-2 country format
    attr_accessor :country

    # Phone country of sender in 2-character alpha ISO 3166-2 country format
    attr_accessor :phone_country

    # Phone number of sender (without country callcode)
    attr_accessor :phone_number

    # Email of sender
    attr_accessor :email

    # First name of sender (used only with a Personal sender)
    attr_accessor :first_name

    # Middle name of sender (used only with a Personal sender)
    attr_accessor :middle_name

    # Last name of sender (used only with a Personal sender)
    attr_accessor :last_name

    # Occupation of sender (used only with a Personal sender)
    attr_accessor :occupation

    # The nationality of the sender (used only with a Personal sender)
    attr_accessor :nationality

    # The onboarding status of the sender
    attr_accessor :onboarding_status

    # The address of the sender
    attr_accessor :address

    # Description of the sender
    attr_accessor :description

    # Name of sender (used only with a Business sender)
    attr_accessor :name

    # Sender's city
    attr_accessor :city

    # Sender's street
    attr_accessor :street

    # Description of address
    attr_accessor :address_description

    # Zip code of sender
    attr_accessor :postal_code

    # Date of birth of sender
    attr_accessor :birth_date

    # IP of sender
    attr_accessor :ip

    # Identification number of document used
    attr_accessor :identification_number

    # Document to be identified. The identification type can be one of the following:  - `DL`: Driving License - `PP`: International Passport - `ID`: National ID - `OT`: Other
    attr_accessor :identification_type

    # Needed for KYC checks. Required to approve the sender unless KYC is waived for your account. Please send us an empty list of documents: `\"documents\": [ ]` in the request if KYC has been waived.  If the documents already exist, please send the Document ID eg. ```JSON \"documents\": [   {     \"id\": \"b6648ba3-1c7b-4f59-8580-684899c84a07\"   } ] ```
    attr_accessor :documents

    # A list of politically exposed people, individuals who are or have been entrusted with prominent public functions by a country, for example heads of state or heads of government, senior politicians, senior government, judicial or military officials, senior executives of state owned corporations, important political party officials.  There is a limit of three (3) politically exposed people per Sender.  Politically exposed person example: ```json   {     \"name\": \"Ronald Reagan\",     \"position\": \"President of the United States\",     \"started_date\": \"1981-01-20T00:00:00.000Z\",     \"ended_date\": \"1989-01-20T00:00:00.000Z\"   } ```
    attr_accessor :politically_exposed_people

    # Metadata of sender. You can store any detail specific to your integration here (for example the local ID of the sender on your end). When requesting sender details you will receive the sent metadata back. Also when sending sender related webhooks you will receive the details stored here as well.
    attr_accessor :metadata

    attr_accessor :state

    attr_accessor :id

    # Optional ID that is supplied by partner linking it to the partner's own Sender ID. Note: if present we will validate whether the sent ID is a duplicate in our system or not.
    attr_accessor :external_id

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
        :'type' => :'type',
        :'country' => :'country',
        :'phone_country' => :'phone_country',
        :'phone_number' => :'phone_number',
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'middle_name' => :'middle_name',
        :'last_name' => :'last_name',
        :'occupation' => :'occupation',
        :'nationality' => :'nationality',
        :'onboarding_status' => :'onboarding_status',
        :'address' => :'address',
        :'description' => :'description',
        :'name' => :'name',
        :'city' => :'city',
        :'street' => :'street',
        :'address_description' => :'address_description',
        :'postal_code' => :'postal_code',
        :'birth_date' => :'birth_date',
        :'ip' => :'ip',
        :'identification_number' => :'identification_number',
        :'identification_type' => :'identification_type',
        :'documents' => :'documents',
        :'politically_exposed_people' => :'politically_exposed_people',
        :'metadata' => :'metadata',
        :'state' => :'state',
        :'id' => :'id',
        :'external_id' => :'external_id',
        :'errors' => :'errors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'country' => :'String',
        :'phone_country' => :'String',
        :'phone_number' => :'String',
        :'email' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'occupation' => :'String',
        :'nationality' => :'String',
        :'onboarding_status' => :'String',
        :'address' => :'String',
        :'description' => :'String',
        :'name' => :'String',
        :'city' => :'String',
        :'street' => :'String',
        :'address_description' => :'String',
        :'postal_code' => :'String',
        :'birth_date' => :'Date',
        :'ip' => :'String',
        :'identification_number' => :'String',
        :'identification_type' => :'String',
        :'documents' => :'Array<Document>',
        :'politically_exposed_people' => :'Array<PoliticallyExposedPerson>',
        :'metadata' => :'Object',
        :'state' => :'SenderState',
        :'id' => :'String',
        :'external_id' => :'String',
        :'errors' => :'Hash<String, Array<ValidationErrorDescription>>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TransferZero::Sender` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TransferZero::Sender`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'phone_country')
        self.phone_country = attributes[:'phone_country']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'occupation')
        self.occupation = attributes[:'occupation']
      end

      if attributes.key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.key?(:'onboarding_status')
        self.onboarding_status = attributes[:'onboarding_status']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.key?(:'address_description')
        self.address_description = attributes[:'address_description']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.key?(:'identification_number')
        self.identification_number = attributes[:'identification_number']
      end

      if attributes.key?(:'identification_type')
        self.identification_type = attributes[:'identification_type']
      end

      if attributes.key?(:'documents')
        if (value = attributes[:'documents']).is_a?(Array)
          self.documents = value
        end
      end

      if attributes.key?(:'politically_exposed_people')
        if (value = attributes[:'politically_exposed_people']).is_a?(Array)
          self.politically_exposed_people = value
        end
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
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
      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      if @phone_country.nil?
        invalid_properties.push('invalid value for "phone_country", phone_country cannot be nil.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @street.nil?
        invalid_properties.push('invalid value for "street", street cannot be nil.')
      end

      if @postal_code.nil?
        invalid_properties.push('invalid value for "postal_code", postal_code cannot be nil.')
      end

      if @ip.nil?
        invalid_properties.push('invalid value for "ip", ip cannot be nil.')
      end

      if @documents.nil?
        invalid_properties.push('invalid value for "documents", documents cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["person", "business"])
      return false unless type_validator.valid?(@type)
      return false if @country.nil?
      return false if @phone_country.nil?
      return false if @email.nil?
      return false if @city.nil?
      return false if @street.nil?
      return false if @postal_code.nil?
      return false if @ip.nil?
      identification_type_validator = EnumAttributeValidator.new('String', ["DL", "PP", "ID", "OT"])
      return false unless identification_type_validator.valid?(@identification_type)
      return false if @documents.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["person", "business"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] identification_type Object to be assigned
    def identification_type=(identification_type)
      validator = EnumAttributeValidator.new('String', ["DL", "PP", "ID", "OT"])
      unless validator.valid?(identification_type)
        fail ArgumentError, "invalid value for \"identification_type\", must be one of #{validator.allowable_values}."
      end
      @identification_type = identification_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          country == o.country &&
          phone_country == o.phone_country &&
          phone_number == o.phone_number &&
          email == o.email &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          occupation == o.occupation &&
          nationality == o.nationality &&
          onboarding_status == o.onboarding_status &&
          address == o.address &&
          description == o.description &&
          name == o.name &&
          city == o.city &&
          street == o.street &&
          address_description == o.address_description &&
          postal_code == o.postal_code &&
          birth_date == o.birth_date &&
          ip == o.ip &&
          identification_number == o.identification_number &&
          identification_type == o.identification_type &&
          documents == o.documents &&
          politically_exposed_people == o.politically_exposed_people &&
          metadata == o.metadata &&
          state == o.state &&
          id == o.id &&
          external_id == o.external_id &&
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
      [type, country, phone_country, phone_number, email, first_name, middle_name, last_name, occupation, nationality, onboarding_status, address, description, name, city, street, address_description, postal_code, birth_date, ip, identification_number, identification_type, documents, politically_exposed_people, metadata, state, id, external_id, errors].hash
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
