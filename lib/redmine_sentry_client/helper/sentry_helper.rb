module RedmineSentryClient
    module Helper
        class SentryHelper
            def self.init()
                Sentry.init do |config|
                    config.dsn = self.dsn()
                    config.environment = self.environment()
                    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
        
                    config.traces_sample_rate = self.traces_sample_rate()
                end
            end
        
            ## Get the configured environment
            ## either the config value, Rails.env or 'production'
            def self.environment()
                return Setting.plugin_redmine_sentry_client['environment'] ? Setting.plugin_redmine_sentry_client['environment'] : Rails.env
            end
        
            ## get the Sentry DSN
            def self.dsn()
                return Setting.plugin_redmine_sentry_client['dsn']
            end

            ## get the Sentry traces_sample_rate configuration
            def self.traces_sample_rate()
                return Setting.plugin_redmine_sentry_client['traces_sample_rate'].to_d
            end
        end
    end    
end