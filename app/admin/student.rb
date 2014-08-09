ActiveAdmin.register Student do
  permit_params :name, :father_name, :dob, :phone_number, :email, :address, :standard, :section
  form do |f|  
      f.inputs "students" do
        f.input :name
        f.input :father_name
        f.input :dob, :as => :datepicker
        f.input :standard, :label => 'Standard', :as => :select, :collection => (1..12).to_a
        f.input :section, :label => 'Section', :as => :select, :collection => ('A'..'Z').to_a
        f.input :phone_number
        f.input :email
        f.input :address, :input_html => { :class => 'autogrow', :rows => 10, :cols => 20}
      end
    f.actions
   end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
