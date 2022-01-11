# frozen_string_literal: true

# Controller to test the sentry integration
class SentryExampleController < ApplicationController
  def index
    raise 'Sentry works!'
  end
end
