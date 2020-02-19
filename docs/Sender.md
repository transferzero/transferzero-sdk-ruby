# TransferZero::Sender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of sender to create - either person or business (defaults to person)  | [optional] 
**country** | **String** | Country of sender in 2-character alpha ISO 3166-2 country format | 
**phone_country** | **String** | Phone country of sender in 2-character alpha ISO 3166-2 country format | 
**phone_number** | **String** | Phone number of sender (without country callcode) | [optional] 
**email** | **String** | Email of sender | 
**first_name** | **String** | First name of sender (used only with a Personal sender) | [optional] 
**middle_name** | **String** | Middle name of sender (used only with a Personal sender) | [optional] 
**last_name** | **String** | Last name of sender (used only with a Personal sender) | [optional] 
**occupation** | **String** | Occupation of sender (used only with a Personal sender) | [optional] 
**nationality** | **String** | The nationality of the sender (used only with a Personal sender) | [optional] 
**onboarding_status** | **String** | The onboarding status of the sender | [optional] 
**address** | **String** | The address of the sender | [optional] 
**description** | **String** | Description of the sender | [optional] 
**name** | **String** | Name of sender (used only with a Business sender) | [optional] 
**city** | **String** | Sender&#39;s city | 
**street** | **String** | Sender&#39;s street | 
**address_description** | **String** | Description of address | [optional] 
**postal_code** | **String** | Zip code of sender | 
**birth_date** | **Date** | Date of birth of sender | [optional] 
**ip** | **String** | IP of sender | 
**identification_number** | **String** | Identification number of document used | [optional] 
**identification_type** | **String** | Document to be identified. The identification type can be one of the following:  - &#x60;DL&#x60;: Driving License - &#x60;PP&#x60;: International Passport - &#x60;ID&#x60;: National ID - &#x60;OT&#x60;: Other | [optional] 
**documents** | [**Array&lt;Document&gt;**](Document.md) | Needed for KYC checks. Required to approve the sender unless KYC is waived for your account. Please send us an empty list of documents: &#x60;\&quot;documents\&quot;: [ ]&#x60; in the request if KYC has been waived.  If the documents already exist, please send the Document ID eg. &#x60;&#x60;&#x60;JSON \&quot;documents\&quot;: [   {     \&quot;id\&quot;: \&quot;b6648ba3-1c7b-4f59-8580-684899c84a07\&quot;   } ] &#x60;&#x60;&#x60; | 
**politically_exposed_people** | [**Array&lt;PoliticallyExposedPerson&gt;**](PoliticallyExposedPerson.md) | A list of politically exposed people, individuals who are or have been entrusted with prominent public functions by a country, for example heads of state or heads of government, senior politicians, senior government, judicial or military officials, senior executives of state owned corporations, important political party officials.  There is a limit of three (3) politically exposed people per Sender.  Politically exposed person example: &#x60;&#x60;&#x60;json   {     \&quot;name\&quot;: \&quot;Ronald Reagan\&quot;,     \&quot;position\&quot;: \&quot;President of the United States\&quot;,     \&quot;started_date\&quot;: \&quot;1981-01-20T00:00:00.000Z\&quot;,     \&quot;ended_date\&quot;: \&quot;1989-01-20T00:00:00.000Z\&quot;   } &#x60;&#x60;&#x60; | [optional] 
**metadata** | [**Object**](.md) | Metadata of sender. You can store any detail specific to your integration here (for example the local ID of the sender on your end). When requesting sender details you will receive the sent metadata back. Also when sending sender related webhooks you will receive the details stored here as well. | [optional] 
**state** | [**SenderState**](SenderState.md) |  | [optional] 
**id** | **String** |  | [optional] 
**external_id** | **String** | Optional ID that is supplied by partner linking it to the partner&#39;s own Sender ID. Note: if present we will validate whether the sent ID is a duplicate in our system or not. | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Sender.new(type: person,
                                 country: NG,
                                 phone_country: NG,
                                 phone_number: 752403639,
                                 email: example@home.org,
                                 first_name: Johnny,
                                 middle_name: Johnny,
                                 last_name: English,
                                 occupation: Accountant,
                                 nationality: NG,
                                 onboarding_status: null,
                                 address: null,
                                 description: null,
                                 name: null,
                                 city: Kampala,
                                 street: Fake Street,
                                 address_description: null,
                                 postal_code: 798983,
                                 birth_date: null,
                                 ip: 127.0.0.1,
                                 identification_number: AB123456,
                                 identification_type: ID,
                                 documents: [{&quot;id&quot;:&quot;b6648ba3-1c7b-4f59-8580-684899c84a07&quot;}],
                                 politically_exposed_people: [{&quot;id&quot;:&quot;40&quot;,&quot;name&quot;:&quot;Ronald Reagan&quot;,&quot;position&quot;:&quot;President of the United States&quot;,&quot;started_date&quot;:&quot;1981-01-20T00:00:00.000Z&quot;,&quot;ended_date&quot;:&quot;1989-01-20T00:00:00.000Z&quot;,&quot;sender_id&quot;:&quot;f9dc79ca-0c39-4add-9f4d-5ad7e6f187fb&quot;}],
                                 metadata: {},
                                 state: null,
                                 id: bf9ff782-e182-45ac-abea-5bce83ad6670,
                                 external_id: 806ec63a-a5a7-43cc-9d75-1ee74fbcc026,
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]})
```


