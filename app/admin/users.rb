ActiveAdmin.register User do	
	menu :if => proc{ current_admin_user.email=="nramprabu@gmail.com" }
	index do
		column :name
		column :email
		column :age
		column :address
		column :phoneno   		
		column "" do |user|
			link_to "View", admin_user_path(user)
		end	
		column "" do |user|
      link_to "Edit", edit_admin_user_path(user)
		end				
	end  
	
	form do |f|
	f.inputs "" do
			f.input :name
			f.input :email
			f.input :password
			f.input :password_confirmation
			f.input :age
			f.input :address
			f.input :phoneno													 
		end	
		f.buttons
	end
	
	show do |ad|
		attributes_table do
			row :name
			row :age
			row :email
			row :phoneno
			row :address
			row("Status") { status_tag (user.status ? "Done" : "Pending"), (user.status ? :ok : :error) }
		end
	end
end
