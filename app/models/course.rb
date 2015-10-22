class Course < ActiveRecord::Base
  # Relations
  belongs_to :user

  # Validations
  validates :name, presence: true
  validates :user, presence: true

end