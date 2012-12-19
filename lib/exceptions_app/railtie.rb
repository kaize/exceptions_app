require 'exceptions_app'

module ExceptionsApp
  class Railtie < ::Rails::Railtie

    rake_tasks do
      load 'exceptions_app/rails/rake_tasks.rake'
    end
  end
end
