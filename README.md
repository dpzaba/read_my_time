# Read my time

[![Build Status](https://travis-ci.org/dpzaba/read_my_time.svg)](https://travis-ci.org/dpzaba/read_my_time)

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
 => "1 day 3 hours 46 minutes"
> 100000.seconds_in_words(skip_seconds: true)
 => "1 day 3 hours 46 minutes"
```

## Options

### Locales and Translations

This gem use I18n to localize / translate the text

### Time units


## Contribute

## License
