require 'test_helper'

class SimpleResponseTest < TestCase

  def setup
    @env = {}
    @env["PATH_INFO"] = "/404"
  end

  def test_initializing_without_headers
    sr = ExceptionsApp::SimpleResponse.new
    response = sr.call(@env)
    assert_equal "404", response[0]
    assert_equal "pass", response[1]["X-Cascade"]
  end

  def test_initializing_with_headers
    sr = ExceptionsApp::SimpleResponse.new({"ContentLength" => 0})
    response = sr.call(@env)
    assert_equal 0, response[1]["ContentLength"]
  end

  def test_empty_body
    sr = ExceptionsApp::SimpleResponse.new
    response = sr.call(@env)
    assert_nil response[3]
  end
end
