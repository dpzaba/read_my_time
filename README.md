# Read my time

[![Build Status](https://travis-ci.org/dpzaba/read_my_time.svg)](https://travis-ci.org/dpzaba/read_my_time)

Humanize your times in your locale language. It is plain Ruby, you don't need Rails or Sinatra, but it works great with them.

This gem helps you to transform your senconds (a numeric value) into a readable string for humans.


## Installation

Just install the gem

```
gem install read_my_time
```

or add ```gem 'read_my_time'``` to your Gemfile and run ```bundle install```


## Usage

```
> 100.seconds_in_words
 => "1 minute 40 seconds"
> 10000.seconds_in_words
 => "2 hours 46 minutes 40 seconds"
> 100000.seconds_in_words
 => "1 day 3 hours 46 minutes 40 seconds"
> 100000.seconds_in_words(skip_seconds: true)
 => "1 day 3 hours 46 minutes"
```

Use spanish locale
```
> I18n.locale = :es
 => :es
> 100.seconds_in_words
 => "1 minuto 40 segundos"
```

By default it avoids to show empty values like ```0 minutes```.


## Options

### Locales and Translations

This gem use ```I18n``` to localize / translate the text (basically time units).

The default scope is: ```read_my_time```. So you can add or overwrite new translations easily (check ```lib/read_my_time/locales/en.yml``` for an example).

### Time units

By default it handles:

- seconds
- minutes
- hours
- days


### Separator

By default it sets the space character.

### Skip seconds

To hide seconds just pass ```skip_seconds: true``` to ```seconds_in_words``` method.


## Contribute


## License

Check LICENSE.txt file.
