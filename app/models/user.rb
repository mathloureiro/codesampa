class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

   # Relations
   has_many :courses
   
   # Validations
   validates :name, presence: true
   validate :name_is_not_email
   validates_length_of :password, in: 5..30

   def name_is_not_email
   	unless (self.name =~ /[@]/) == nil
   		errors.add(:name, :name_is_not_email)
   	end
   end


end