class DocumentationValidator < ActiveModel::Validator
  def validate(record)
    return if record.documentation.match?(record.class::DOCUMENTATION_REGEX)

    record.errors.add(:format, 'Invalid documentation')
  end
end
