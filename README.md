
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
