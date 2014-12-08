class Numeric

  def seconds_in_words(opts = {})
    seconds_int = self.to_i

    return '' if seconds_int <= 0

    # options by default
    opts[:skip_seconds] = false if opts[:skip_seconds].nil?

    unit_time_dividers = {
      seconds: 60,
      minutes: 60,
      hours:   24,
      days:    365
    }

    unit_time_dividers.inject([]) do |s, (unit_time, divider)|

      if seconds_int > 0
        seconds_int, rest = seconds_int.divmod(divider)

        if rest.nonzero? && !(unit_time == :seconds && opts[:skip_seconds])
          word = I18n.t(locale_prefix + unit_time.to_s, count: rest)
          s.unshift("#{rest} #{word}")
        end
      end
      s
    end.join(' ')

  end

  def locale_prefix
    'read_my_time.'
  end

end
