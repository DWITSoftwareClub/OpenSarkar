ActiveAdmin.register Comment, as: "UserComment" do
	index do
    	selectable_column
    	column :id
    	column :commentable
    	column :user
    	column :body
    	column :created_at
    	default_actions
  	end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
