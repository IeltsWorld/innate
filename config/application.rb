require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module IeltsApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # Rails.autoloaders.main.ignore(Rails.root.join('lib/generators/asset_manifest_generator.rb'))
    Rails.autoloaders.main.ignore("#{config.root}/lib/tasks")

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("lib")
    config.eager_load_paths << "#{config.root}/lib"
config.require_master_key = false
    # Don't generate system test files.
    config.generators.system_tests = nil
    config.autoloader = :classic
    config.eager_load = true
    config.assets.initialize_on_precompile = false

  end
end
