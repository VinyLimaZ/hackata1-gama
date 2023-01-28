# frozen_string_literal: true

require_relative 'printer'
require_relative 'validator'
require_relative 'print'
require './data/json'
require './data/xml'

def validate(extension)
  Validator.validate_it!(extension, Printer::EXTENSIONS)
end

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'CSV'

extension = gets.chomp

validate(extension.downcase)

Printer::EXTENSIONS.each do |ext|
  klass = Class.new(Printer) do
    def initialize(ext)
      @string = Data.const_get(ext.capitalize)::CONTENT
      @file = open!(ext)
    rescue StandardError
      'Something wrong isn\'t right'
    end

    def execute
      write! and close!
    end

    private

    def open!(ext)
      File.open("file.#{ext}", 'a+')
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

Print.call(extension)
