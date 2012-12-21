module ExceptionsApp
  class Config
    attr_accessor :envs, :errors_path, :statics_path

    def initialize
      @envs = ["production"]
      @errors_path = ["/404", "/422", "/500"]
      @statics_path = "public"
    end
  end
end
