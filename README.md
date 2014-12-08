```
gem install read_my_time
```

Using Ruby:

```
> require 'read_my_time'
 => true
> 100.seconds_in_words
 => "1 minute 40 seconds"
> 10000.seconds_in_words
 => "2 hours 46 minutes 40 seconds"
> 100000.seconds_in_words
 => "1 day 3 hours 46 minutes"
> 100000.seconds_in_words(skip_seconds: true)
 => "1 day 3 hours 46 minutes"
```

Or using Rails:

Add ```gem 'read_my_time'``` to your Gemfile and run ```bundle install```


```
> rails c
> (1.hour + 10.minutes + 100).seconds_in_words
 => "1 hour 11 minutes 40 seconds"
> (1.hour + 10.minutes + 100).seconds_in_words(skip_seconds: true)
 => "1 hour 11 minutes"
 ```
