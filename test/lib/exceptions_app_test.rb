require 'test_helper'

class ExceptionsAppTest < TestCase
 
  def test_configuration_block_correct_object
    ExceptionsApp.configure do |config|
      assert_instance_of ExceptionsApp::Config, config
    end
  end
  
  def test_should_overwrite_default_configuration
    environments = ["prod#1", "prod#2"]
    errors_path = ["123", "456"]
    ExceptionsApp.configure do |config|
      config.envs = environments
      config.errors_path = errors_path
    end
    assert_equal environments, ExceptionsApp.config.envs
    assert_equal errors_path, ExceptionsApp.config.errors_path
  end

end
