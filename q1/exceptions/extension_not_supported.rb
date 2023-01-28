# frozen_string_literal: true

module Exceptions
  class ExtensionNotSupported < StandardError
    def initialize(message = nil)
      message ||= 'That extension isn\'t supported yet, report to our devs'
      puts message
    end
  end
end
