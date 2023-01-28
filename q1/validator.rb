# frozen_string_literal: true

require_relative 'exceptions/extension_not_supported'

class Validator
  class << self
    def validate_it!(ext, valid_extensions)
      ext_not_supported! if invalid_format?(ext, valid_extensions)
    end

    private

    def ext_not_supported!
      raise(Exceptions::ExtensionNotSupported) and abort
    end

    def invalid_format?(extension, valid_extensions)
      !valid_extensions.include?(extension)
    end
  end
end
