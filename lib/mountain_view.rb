# frozen_string_literal: true

require "mountain_view/version"
require "mountain_view/configuration"
require "mountain_view/presenter"
require "mountain_view/component"
require "mountain_view/stub"

module MountainView
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

require "mountain_view/engine" if defined?(Rails)
