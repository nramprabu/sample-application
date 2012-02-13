class User < ActiveRecord::Base
  after_create :send_welcome_message
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:age,:address,:phoneno
  validates :name,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
                   
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
   validates :age,  :presence => true
	 validates :address,  :presence => true
	 validates :phoneno,  :presence => true
   def send_welcome_message
    UserMailer.registration_confirmation(self).deliver
   end  
end
