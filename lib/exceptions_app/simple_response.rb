module ExceptionsApp
  class SimpleResponse
    
    def initialize(headers = nil)
      @headers = headers
    end

    def call(env)
      status = env["PATH_INFO"][1..-1]
      @headers ||= {}

      [status, @headers.merge!({"X-Cascade" => "pass"}), []]
    end
  end
end
