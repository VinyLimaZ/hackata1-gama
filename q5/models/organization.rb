class Organization < User
  DOCUMENTATION_REGEX = 'lets pretend has a regex here'

  validates_with DocumentationValidator
end
