# TransferZero::Pagination

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_page** | **Integer** | The number of the current page | [optional] 
**next_page** | **Integer** | The number of the next page. If no next page exists, this will be &#x60;null&#x60; | [optional] 
**prev_page** | **Integer** | The number of the previous page. If no previous page exists, this will be &#x60;null&#x60; | [optional] 
**total_pages** | **Integer** | The number of pages in the result set | [optional] 
**total_count** | **Integer** | The total number of results in the set | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Pagination.new(current_page: 2,
                                 next_page: 3,
                                 prev_page: 1,
                                 total_pages: 5,
                                 total_count: 45)
```


