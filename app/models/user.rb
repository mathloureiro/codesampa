class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

   # Relations
   has_many :courses
   
   # Validations
   validates :name, presence: true
   validate :name_is_not_email

   def name_is_not_email
   	if !((self.name =~ /[@]/) == nil)
   		errors.add(:name, :name_is_not_email)
   	end
   end


end