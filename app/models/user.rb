class User < ActiveRecord::Base
	 validates :name,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
                   
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
   validates :age,  :presence => true
	 validates :address,  :presence => true
	 validates :phoneno,  :presence => true
	#~ has_attached_file :avatar
end
