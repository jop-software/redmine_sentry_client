# frozen_string_literal: true

require 'redmine'

Redmine::Plugin.register :redmine_sentry_client do
  name 'Sentry Client'
  author 'jop-software Inh. Johannes Przymusinski'
  description 'This plugins integrates the sentry sdk to report internal redmine errors to sentry'
  version '1.0.0'
  url 'https://github.com/jop-software/redmine_sentry_client'
  author_url 'http://www.jop-software.de'
  settings default: { 'empty' => true }, partial: 'settings/sentry_settings'
end

require 'redmine_sentry_client'
