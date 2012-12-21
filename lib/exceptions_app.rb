require "exceptions_app/version"

module ExceptionsApp

  autoload :SimpleResponse, 'exceptions_app/simple_response'
  autoload :Config, 'exceptions_app/config'

  def self.configure
    yield self.config
  end

  def self.config
    @config ||= Config.new
  end

end

require 'exceptions_app/railtie' if defined?(Rails)
