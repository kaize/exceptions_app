require 'action_dispatch/testing/integration'

namespace :gen do

  desc "Generate static error pages"
  task :static_pages => :environment do
    app = ActionDispatch::Integration::Session.new Rails.application
    ExceptionsApp.config.errors_path.each do |path|
      app.get path
      response = app.response
      unless response.body.empty?
        File.open("#{ExceptionsApp.config.statics_path}/#{response.status}.html", "w") { |file| file.write(response.body) }
      end
    end
    puts "Static pages generated successfully"
  end
end
