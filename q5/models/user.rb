class User < ActiveRecord
  self.inheritance_column = 'type'

  validates :documentation, presence: true, uniqueness: { case_sensitive: false }
  validates_with DocumentationValidator
end
