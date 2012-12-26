[![BuildStatus](https://travis-ci.org/kaize/exceptions_app.png?branch=master)](https://travis-ci.org/kaize/exceptions_app)

# ExceptionsApp

`exceptions_app` is a gem, that provides a simple way of handling exceptions in Rails applications. 
It changes the default *PublicExceptions* rack middleware to *SimpleResponse*. It adds a Rake task "rake gen:static_pages" that generates static pages for your custom exceptions.

## Installation

Add this line to your application's Gemfile:

    gem 'exceptions_app'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exceptions_app

## Usage

### Configuring

*ExceptionsApp* have method __configure__, that yelds block inside itself. You can change the behaviour by adding this code to **initializers/exceptions_app.rb**

	ExceptionsApp.configure do |config|
	  config.envs = ["production", "another_production"]
	  config.errors_path = ["/404"]
	  config.statics_path = "path_for_statc"
	end

There are several options that can be changed in initializer:

 - `envs` - 		Array of environments in which default *exceptions_app* should be changed to gem's middleware
 - `errors_path` - 	Array of route paths from which custom errors pages will be generated
 - `statics_path` - String path (directory) where to put generated static pages

### Preparations

*ExceptionsApp* is a simple Railtie that changes default *exceptions_app* in environments, mentioned in *envs* config option, to *SimpleResponse* rack middleware. So, to generate correct static error pages you should make custom error pages by yourself. It will be a great idea to make your own *ErrorsController* to handle exceptions and generate errors pages. The example of such controller you can see in *features* directory with cucumber integration tests.

### How to work with it

*ExceptionsApp* is ready to use after *bundle install*. It has default config options, so if you won't change them and won't provide any custom pages it will by default generate static error pages from default Rails 404, 500 and 422 html pages in public directory. In fact it won't change application's behaviour if you won't configure it. Default config options are:

	ExceptionsApp.config.envs = ["production"]
	ExceptionsApp.config.errors_path = ["/404", "/500", "/422"]
	ExceptionsApp.config.statics_path = "public"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
