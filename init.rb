Redmine::Plugin.register :sentry_client do
  name 'Sentry Client'
  author 'jop-software Inh. Johannes Przymusinski'
  description 'This plugins integrates the sentry sdk to report internal redmine errors to sentry'
  version '0.0.1'
  url 'http://jop-software.de'
  author_url 'http://jop-software.de'
  settings default: {'empty' => true}, partial: 'settings/sentry_settings'
end

# initialize sentry only if we have a dsn set
if Setting.plugin_sentry_client['dsn']
  Sentry.init do |config|
    config.dsn = Setting.plugin_sentry_client['dsn']
    config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  
    config.traces_sample_rate = 0.5
  end
end