# frozen_string_literal: true

puts 'Separate with space and ensure that provide 3 args' if ARGV.size != 3

require_relative 'printer'
require_relative 'validator'
require_relative 'print'

def validate(extension)
  Validator.validate_it!(extension, Printer::EXTENSIONS)
end

string = ARGV[0]
filename = ARGV[1]
extension = ARGV[2]

validate(extension)

Printer::EXTENSIONS.each do |ext|
  klass = Class.new(Printer) do
    def initialize(string, filename)
      @string = string
      @file = open!(filename)
    rescue StandardError
      'Something wrong isn\'t right'
    end

    def execute
      write! and close!
    end

    private

    def open!(filename)
      File.open(filename, 'a+')
    end

    def write!
      @file.write(@string)
    end

    def close!
      @file.close
    end
  end

  Printer.const_set(ext.capitalize, klass)
end

Print.call(string, filename: filename, extension: extension)
