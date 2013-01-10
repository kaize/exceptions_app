Capistrano::Configuration.instance(:must_exist).load do
  namespace :gen do

    desc "invoke rake task to generate static error pages. Example"
    task :generate_static do
      run "cd #{deploy_to}/current && RAILS_ENV=#{rails_env} bundle exec rake gen:static_pages"
    end
  end
end
