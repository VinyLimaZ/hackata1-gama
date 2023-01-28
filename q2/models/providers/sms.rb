# frozen_string_literal: true

module Models
  module Providers
    class Sms
      def self.notify!(message)
        puts message
      end
    end
  end
end
