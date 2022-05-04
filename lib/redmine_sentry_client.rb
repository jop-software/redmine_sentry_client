# frozen_string_literal: true

require File.expand_path('../redmine_sentry_client/helper/sentry_helper', __dir__)

# Helper library to integrate sentry
module RedmineSentryClient
  class << self
    def traces_sample_rate
      Setting.plugin_redmine_sentry_client['traces_sample_rate'].to_d || 0.5
    end

    def environment
      Setting.plugin_redmine_sentry_client['environment'] || Rails.env
    end

    def dsn
      Setting.plugin_redmine_sentry_client['dsn'] || ''
    end
  end
end

RedmineSentryClient::Helper::SentryHelper.init
