# frozen_string_literal: true

class Printer
  EXTENSIONS = %w[xml html].freeze

  def initialize(*args)
    raise NotImplementedError
  end

  def execute
    raise NotImplementedError
  end
end
