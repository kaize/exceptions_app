module ExceptionsApp
  class SimpleResponse
    
    def initialize(headers = nil)
      @headers = headers
    end

    def call(env)
      status = env["PATH_INFO"][1..-1]
      @headers ||= {}
      statics_path = "#{ExceptionsApp.config.statics_path}/#{status}.html"
      p statics_path

      if File.exists?(statics_path)
        render(status, File.read(statics_path))
      else
        [status, @headers.merge!({"X-Cascade" => "pass"}), []]
      end
    end

    private
    
    def render(status, body)
      [status, {'Content-Length' => body.bytesize.to_s}, [body]]
    end
  end
end
