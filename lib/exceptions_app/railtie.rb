module ExceptionsApp
  class Railtie < ::Rails::Railtie

    initializer "exceptions_app.install_app" do |app|
      if ExceptionsApp.config.envs.include?(Rails.env)
        app.config.exceptions_app = ExceptionsApp::SimpleResponse.new
      end
    end

    rake_tasks do
      load 'tasks/exceptions_app.rake'
    end
  end
end
