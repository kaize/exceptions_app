require 'test_helper'

class ExceptionsAppTest < TestCase
 
  def test_configuration_block
    
    ExceptionsApp.configure do |config|
      assert_equal ExceptionsApp, config
    end
  end
end
