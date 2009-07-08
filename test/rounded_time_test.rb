require 'test_helper'

class RoundedTimeTest < ActiveSupport::TestCase
  def test_rounds_time_down
    t = Time.parse("7:37:29")
    assert_equal Time.parse("7:30"), t.round(15.minutes)
  end

  def test_rounds_time_up
    t = Time.parse("7:37:30")
    assert_equal Time.parse("7:45"), t.round(15.minutes)
  end
end
