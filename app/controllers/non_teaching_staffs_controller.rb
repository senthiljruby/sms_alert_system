class NonTeachingStaffsController < InheritedResources::Base
  def build_resource_params
    [params.fetch(:teaching_staff, {}).permit(:full_name, :father_name,
                                       :date_of_birth, :date_of_joining, :married,
                                       :email, :address, :mobile, :spouse_name,
                                       :qualification, :role)]
  end
end
