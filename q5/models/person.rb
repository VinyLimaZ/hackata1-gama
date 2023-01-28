class Person < User
  DOCUMENTATION_REGEX = 'lets pretend has a regex here'

  validates_with Validators::DocumentationValidator
end
