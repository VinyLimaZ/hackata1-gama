# frozen_string_literal: true

require_relative 'providers/email'
require_relative 'providers/whatsapp'
require_relative 'providers/sms'

class Broadcaster
  PROVIDERS = {
    email: ::Models::Providers::Email,
    whatsapp: ::Models::Providers::Whatsapp,
    sms: ::Models::Providers::Sms
  }.freeze

  def self.call(provider, message)
    PROVIDERS[provider]
      .notify!(message)
  end
end
