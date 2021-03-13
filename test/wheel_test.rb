require 'minitest/autorun'
require_relative '../lib/gear_wheel' #name of file with class

class WheelTest < Minitest::Test

  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)
    assert_in_delta(29, wheel.diameter, 0.01)
  end

  def test_calculates_circumference
    wheel = Wheel.new(26, 1.5)
    assert_in_delta(91.1, wheel.circumference, 0.01)
  end

end
