# frozen_string_literal: true

require_relative 'printer'
require_relative 'exceptions/extension_not_supported'

class Print
  class << self
    def call(extension)
      print(extension)
    end

    def print(extension)
      Printer
        .const_get("Printer::#{extension.capitalize}")
        .new(extension)
        .execute
    end
  end
end
