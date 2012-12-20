module ExceptionsApp
  class Railtie < ::Rails::Railtie

    initializer "exceptions_app.initializer" do |app|
      if ExceptionsApp.config.envs.include?(Rails.env)
        app.exceptions_app = ExceptionsApp::SimpleResponse
      end
    end

    rake_tasks do
      load 'tasks/exceptions_app.rake'
    end
  end
end
