require File.join(File.dirname(__FILE__), 'app/helpers/sentry_helper.rb')

Redmine::Plugin.register :sentry_client do
  name 'Sentry Client'
  author 'jop-software Inh. Johannes Przymusinski'
  description 'This plugins integrates the sentry sdk to report internal redmine errors to sentry'
  version '0.0.1'
  url 'https://github.com/jop-software/redmine-sentry-client'
  author_url 'http://jop-software.de'
  settings default: {'empty' => true}, partial: 'settings/sentry_settings'
end

SentryHelper.init()