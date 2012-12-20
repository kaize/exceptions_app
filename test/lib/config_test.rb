require 'test_helper'

class ConfigTest < TestCase

  def test_should_return_default_configuration
    config = ExceptionsApp::Config.new
    assert_equal ["production"], config.envs
    assert_equal ["/404", "/422", "/500"], config.errors_path
  end

end
