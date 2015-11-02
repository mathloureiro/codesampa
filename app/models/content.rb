class Content < ActiveRecord::Base
  # Relations
  belongs_to :user
  belongs_to :concept

  # Validations
  validates :title, :concept_id, presence: true

  # Slug
  def to_param
    "#{id}-#{title.downcase}"
  end

end