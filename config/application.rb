require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Rudneilucas
  class Application < Rails::Application
    config.time_zone = 'Brasilia'

    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :"pt-BR"
    config.encoding = 'utf-8'

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Logger
    config.log_level = :info
    config.log_tags = [:uuid]
    config.log_formatter = ::Logger::Formatter.new
  end
end
