require "exceptions_app/version"

module ExceptionsApp

  autoload :SimpleResponse, 'exceptions_app/simple_response'
  autoload :Railtie, 'exceptions_app/railtie'
  autoload :Config, 'exceptions_app/config'

  def self.configure
    yield self.config
  end

  def self.config
    @config ||= Config.new
  end

end
