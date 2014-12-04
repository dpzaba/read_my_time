
```
> require 'read_my_time'
 => true 
> 100.seconds_in_words
 => "1 minutes" 
> 10000.seconds_in_words
 => "2 hours 46 minutes" 
> 100000.seconds_in_words
 => "1 days 3 hours 46 minutes" 
> 100000.seconds_in_words(skip_seconds: false)
 => "1 days 3 hours 46 minutes 40 seconds" 
 
```

Or even using Rails console (or only ActiveSupport gem)

```
> rails c
> (1.hour + 10.minutes + 100).seconds_in_words
 => "1 hours 11 minutes" 
> (1.hour + 10.minutes + 100).seconds_in_words(skip_seconds: false)
 => "1 hours 11 minutes 40 seconds"
 ```
 
 If you want to be able to write ``` 1.hour + 30.minutes ``` in plain ruby, you have to require an ActiveSupport class.
 
 ```
 require 'active_support/core_ext/numeric/time'
 ```
