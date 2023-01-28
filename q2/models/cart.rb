# frozen_string_literal: true

require_relative 'broadcaster'

class Cart
  class << self
    def finish!
      notify!('Pedido confirmado!')
    end

    private

    def notify!(msg)
      Broadcaster.call(:sms, msg)
      Broadcaster.call(:email, msg)
      Broadcaster.call(:whatsapp, msg)
    end
  end
end
