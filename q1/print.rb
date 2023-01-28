# frozen_string_literal: true

require_relative 'printer'
require_relative 'exceptions/extension_not_supported'

class Print
  class << self
    def call(string, filename:, extension:)
      print(string, filename, extension)
    end

    def print(string, filename, extension)
      Printer
        .const_get("Printer::#{extension.capitalize}")
        .new(string, "#{filename}.#{extension}")
        .execute
    end
  end
end
