 require 'minitest/autorun'

 require 'read_my_time'

class TestReadMyTime < MiniTest::Test

  def test_handle_nil_value
    assert_equal ReadMyTime.seconds_in_words(nil), ''
  end

  def test_handle_float_values
    assert_equal ReadMyTime.seconds_in_words(0.1), ''
  end

  def test_dont_return_seconds_by_default
    assert_equal ReadMyTime.seconds_in_words(10), ''
  end

  def test_return_seconds_explicitly
    assert_equal ReadMyTime.seconds_in_words(10, skip_seconds: false), '10'
  end

  def test_return_word_minutes
    assert_equal ReadMyTime.seconds_in_words(1.minute + 40.seconds), '1 min 40 s'
  end

  def test_return_word_hours
    assert_equal ReadMyTime.seconds_in_words(1.hour + 1.minute + 40), '1 hour 1 min 40 s'
  end

  def test_return_word_days
    assert_equal ReadMyTime.seconds_in_words(1.day + 1.hour + 1.minute + 40), '1 day 1 hour 1 min 40 s'
  end

end
