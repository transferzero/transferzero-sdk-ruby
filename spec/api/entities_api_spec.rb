=begin
#BitPesa Private API

#API specification used for internal BitPesa endpoints

OpenAPI spec version: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta3

=end

require 'spec_helper'
require 'json'

# Unit tests for TransferZero::EntitiesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EntitiesApi' do
  before do
    # run before each test
    @api_instance = TransferZero::EntitiesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EntitiesApi' do
    it 'should create an instance of EntitiesApi' do
      expect(@api_instance).to be_instance_of(TransferZero::EntitiesApi)
    end
  end

  # unit tests for get_entities
  # Listing entities
  # Get a list of entities
  # @param entity_type Type of entities to get.  Example: &#x60;/risk_assessment/entities/sender/summary?ids[]&#x3D;bf9ff782-e182-45ac-abea-5bce83ad6670&amp;ids[]&#x3D;344fb668-196d-43db-9d94-b34b7e6c7e0b&#x60;
  # @param ids Returns entities of specified entity(e.g Sender) id(s). This allows the fetching of entities for multiple e.g. senders  Example: &#x60;/risk_assessment/entities/sender?ids[]&#x3D;bf9ff782-e182-45ac-abea-5bce83ad6670&amp;ids[]&#x3D;344fb668-196d-43db-9d94-b34b7e6c7e0b&#x60;
  # @param [Hash] opts the optional parameters
  # @return [EntityListResponse]
  describe 'get_entities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entities_by_params
  # Listing entities by params (rating and/or state)
  # Get a list of entities scoped by the requested params (rating and/or state)
  # @param entity_type Type of entities to retrieve.  Example: &#x60;/risk_assessment/entities/sender/search?rating&#x3D;extremely_high&amp;state&#x3D;complete&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :rating Returns a list of entities scoped by the Entity rating (rating param can be one of &#39;extremely_high&#39;, &#39;high_risk&#39;, &#39;medium_risk&#39; or &#39;low_risk&#39;)  Example: &#x60;/risk_assessment/entities/Sender::Business/search?rating&#x3D;extremely_high&#x60;
  # @option opts [String] :state Returns a list of entities scoped by the Entity state (state param can be one of &#39;complete&#39; or &#39;incomplete&#39;)  Example: &#x60;/risk_assessment/entities/Sender::Business/search?state&#x3D;complete&#x60;
  # @return [EntityListResponse]
  describe 'get_entities_by_params test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entity
  # Fetching a entity
  # Returns a single entity by the Entity ID
  # @param entity_type Type of entities to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param entity_id ID of the entity to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param [Hash] opts the optional parameters
  # @return [EntityCreateResponse]
  describe 'get_entity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_entity
  # Updating an entity
  # Updates a single entity by the Entity ID
  # @param entity_type Type of entities to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param entity_id ID of the entity to get.  Example: &#x60;/risk_assessment/entities/sender/bf9ff782-e182-45ac-abea-5bce83ad6670&#x60;
  # @param entity_update_request 
  # @param [Hash] opts the optional parameters
  # @return [EntityUpdateResponse]
  describe 'patch_entity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_entity
  # Creating an entity
  # Creates a new entity. 
  # @param entity_type Type of entity to create.
  # @param entity_id ID of entity type to create entity for.  Example: &#x60;/risk_assessment/entities/sender/e6f67a67-b2c2-4897-ad58-9fc3a9d8d991&#x60;
  # @param entity_create_request 
  # @param [Hash] opts the optional parameters
  # @return [EntityCreateResponse]
  describe 'post_entity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end