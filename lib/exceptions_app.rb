require "exceptions_app/version"

module ExceptionsApp

  def self.configure
    yield self
  end

end
