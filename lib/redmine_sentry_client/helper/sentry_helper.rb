module RedmineSentryClient
    module Helper
        class SentryHelper
            
            def self.init()
                Sentry.init do |config|
                    config.dsn = RedmineSentryClient.dsn
                    config.environment = RedmineSentryClient.environment
                    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
        
                    config.traces_sample_rate = RedmineSentryClient.traces_sample_rate
                end
            end
        end
    end    
end