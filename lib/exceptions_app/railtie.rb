module ExceptionsApp
  class Railtie < ::Rails::Railtie

    rake_tasks do
      load 'tasks/exceptions_app.rake'
    end
  end
end
