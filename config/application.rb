# frozen_string_literal: true

require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module Granite
  class Application < Rails::Application
    # previous code if any

    config.generators do |g|
      g.test_framework :test_unit, fixture: false
    end
  end
end
