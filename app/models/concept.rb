class Concept < ActiveRecord::Base
	# Relations
	belongs_to :user
	belongs_to :course
  has_many :contents, dependent: :destroy

  # Validations
  validates :name, :course_id, presence: true

	# Slug
	def to_param
		"#{id}-#{name.downcase}"
	end

end
