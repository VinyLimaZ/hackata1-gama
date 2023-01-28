# frozen_string_literal: true

module Models
  module Providers
    class Email
      def self.notify!(message)
        puts message
      end
    end
  end
end
