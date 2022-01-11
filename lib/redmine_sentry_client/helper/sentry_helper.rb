# frozen_string_literal: true

module RedmineSentryClient
  module Helper
    # Module to initialize sentry
    class SentryHelper
      def self.init
        Sentry.init do |config|
          config.dsn = RedmineSentryClient.dsn
          config.environment = RedmineSentryClient.environment
          config.breadcrumbs_logger = %i[active_support_logger http_logger]

          config.traces_sample_rate = RedmineSentryClient.traces_sample_rate
        end
      end
    end
  end
end
