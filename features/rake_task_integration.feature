@disable_bundler
Feature: Rake task for generating static pages
  should be added into rails application

  Background:
    Given I successfully run `bundle exec rails new testapp --skip-bundle --skip-sprockets`
    And I cd to "testapp"
    And I add "exceptions_app" from this project as a dependency
    And I successfully run `bundle install`
    And I successfully run `bundle exec rails g controller Errors not_found internal_error unprocessable_entity`

  Scenario: Check the existence of rake task
    When I successfully run `bundle exec rake -T --trace`
    Then the output should contain "rake gen:static_pages"
