require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'utilities'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Utilities
   	end.new
	end

	def test_leap_year
		assert_equal true, @m.leap_year?(4)
		assert_equal true, @m.leap_year?(2000)
		assert_equal false, @m.leap_year?(1900)
		assert_equal false, @m.leap_year?(5)
	end

	def test_percent_seconds_in_year
		assert_equal "3.2%", @m.percent_seconds_in_year(1000000)
		assert_equal "0.0%", @m.percent_seconds_in_year(0)
	end

	def test_convert_military_time
		assert_equal "20:15", @m.convert_military_time("8:15 pm")
		assert_equal "5:45", @m.convert_military_time("5:45 am")
		assert_equal "0:07", @m.convert_military_time("12:07 am")
	end

end
