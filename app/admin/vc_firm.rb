ActiveAdmin.register VcFirm do

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

permit_params :vc_type, :city, :office_address, :description, :website, :name, :logo, :twitter, :facebook, :seed_stage, :series_a, :series_b, :series_c, :growth_stage, :creation_date, :country, :category

end
