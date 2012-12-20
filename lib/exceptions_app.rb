require "exceptions_app/version"

module ExceptionsApp

  autoload :SimpleResponse, 'exceptions_app/simple_response'
  autoload :Railtie, 'exceptions_app/railtie'

  def self.configure
    yield self
  end

end
