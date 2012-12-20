module ExceptionsApp
  class Config
    attr_accessor :envs, :errors_path

    def initialize
      @envs = ["production"]
      @errors_path = ["/404", "/422", "/500"]
    end
  end
end
