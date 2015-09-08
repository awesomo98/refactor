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

	def test_evaluate
		assert_equal true, @m.evaluate(4)
		assert_equal true, @m.evaluate(2000)
		assert_equal false, @m.evaluate(1900)
		assert_equal false, @m.evaluate(5)
	end

	def test_percent_seconds_in_year
		
	end

end
