json.array!(@non_teaching_staffs) do |non_teaching_staff|
  json.extract! non_teaching_staff, :id, :full_name, :father_name, :date_of_birth, :date_of_joining, :married, :spouse_name, :aniversary_date, :qualification, :role, :email, :mobile, :address
  json.url non_teaching_staff_url(non_teaching_staff, format: :json)
end
