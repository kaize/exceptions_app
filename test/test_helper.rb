require 'bundler/setup'
Bundler.require

require 'coveralls'
Coveralls.wear!

MiniTest::Unit.autorun

class TestCase < MiniTest::Unit::TestCase
end
