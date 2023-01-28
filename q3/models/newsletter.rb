# frozen_string_literal: true

require_relative 'broadcaster'

class Newsletter
  class << self
    def notify
      notify!
    end

    private

    def notify!(msg)
      Broadcaster.call(msg)
    end
  end
end
