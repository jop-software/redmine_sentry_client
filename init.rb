Redmine::Plugin.register :sentry_client do
  name 'Sentry Client plugin test'
  author 'jop-software Inh. Johannes Przymusinski'
  description 'This plugins integrates the sentry sdk to report internal redmine errors to sentry'
  version '0.0.1'
  url 'http://jop-software.de'
  author_url 'http://jop-software.de'
  settings default: {'empty' => true}, partial: 'settings/sentry_settings'
end

if Setting.plugin_sentry_client['dsn']
  Sentry.init do |config|
    config.dsn = Setting.plugin_sentry_client['dsn']
    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  
    # To activate performance monitoring, set one of these options.
    # We recommend adjusting the value in production:
    config.traces_sample_rate = 0.5
    # or
    config.traces_sampler = lambda do |context|
      true
    end
  end
end