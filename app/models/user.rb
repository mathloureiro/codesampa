class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

   # Validations
   validates :name, presence: true
   validate :name_is_not_email

   def name_is_not_email
   	unless (self.name =~ /[@]/) == nil
   		errors.add(:name, "some error")
   	end
   end

end