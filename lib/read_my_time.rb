class ReadMyTime

  def self.seconds_in_words(seconds, opts = {})
    return '' if seconds.nil?

    seconds_int = seconds.to_i

    return '' if seconds_int <= 0

    ''
  end

end
