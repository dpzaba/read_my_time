require 'minitest/autorun'

require 'read_my_time'
require 'active_support/core_ext/numeric/time'

class TestReadMyTime < MiniTest::Test

  def test_return_empty_for_zero
    assert_equal '', 0.seconds_in_words
  end

  def test_return_empty_for_negative_values
    assert_equal('', -10.seconds_in_words)
  end

  def test_return_seconds_by_default
    assert_equal('10 seconds', 10.seconds_in_words)
  end

  def test_dont_return_seconds_explicitly
    assert_equal('', 10.seconds_in_words(skip_seconds: true))
  end

  def test_handle_float_values
    assert_equal('10 seconds', 10.1.seconds_in_words)
  end

  def test_return_word_minutes_and_seconds
    assert_equal('1 minutes 40 seconds', (1.minute + 40.seconds).seconds_in_words)
  end

  def test_return_only_word_minutes
    assert_equal('1 minutes', (1.minute + 40.seconds).seconds_in_words(skip_seconds: true))
  end

  def test_return_word_hours
    assert_equal('1 hours 1 minutes 40 seconds', (1.hour + 1.minute + 40).seconds_in_words)
  end

  def test_return_word_days
    assert_equal('1 days 1 hours 1 minutes 40 seconds', (1.day + 1.hour + 1.minute + 40).seconds_in_words)
  end

  # skip show 0 values
  def test_dont_return_zero_values
    assert_equal('1 days 1 minutes 40 seconds', (1.day + 1.minute + 40).seconds_in_words)
  end

end
