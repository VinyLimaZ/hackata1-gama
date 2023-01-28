# frozen_string_literal: true

class Printer
  EXTENSIONS = %w[xml json].freeze

  def initialize(*args)
    raise NotImplementedError
  end

  def execute
    raise NotImplementedError
  end
end
