module RedmineSentryClient
    module Helper
        class SentryHelper
            def self.init()
                Sentry.init do |config|
                    config.dsn = self.dsn()
                    config.environment = self.environment()
                    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
        
                    # TODO: Allow customisation of traces_sample_rate
                    config.traces_sample_rate = 0.5
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
        end
    end    
end