ActiveAdmin.register Product do
menu :if => proc{ current_admin_user.email=="nramprabu@gmail.com" }
index do
	column :name
	column :category
	column :released_at
	column :price
end  
end
