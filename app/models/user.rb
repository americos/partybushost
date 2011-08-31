class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  

  #Overwriting the to_s ruby method that is implicitly use on: views/users/index.html.erb (on the link_to user)
  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
  
end
