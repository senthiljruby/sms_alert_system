require 'test_helper'

class NonTeachingStaffsControllerTest < ActionController::TestCase
  setup do
    @non_teaching_staff = non_teaching_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:non_teaching_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create non_teaching_staff" do
    assert_difference('NonTeachingStaff.count') do
      post :create, non_teaching_staff: { address: @non_teaching_staff.address, aniversary_date: @non_teaching_staff.aniversary_date, date_of_birth: @non_teaching_staff.date_of_birth, date_of_joining: @non_teaching_staff.date_of_joining, email: @non_teaching_staff.email, father_name: @non_teaching_staff.father_name, full_name: @non_teaching_staff.full_name, married: @non_teaching_staff.married, mobile: @non_teaching_staff.mobile, qualification: @non_teaching_staff.qualification, role: @non_teaching_staff.role, spouse_name: @non_teaching_staff.spouse_name }
    end

    assert_redirected_to non_teaching_staff_path(assigns(:non_teaching_staff))
  end

  test "should show non_teaching_staff" do
    get :show, id: @non_teaching_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @non_teaching_staff
    assert_response :success
  end

  test "should update non_teaching_staff" do
    patch :update, id: @non_teaching_staff, non_teaching_staff: { address: @non_teaching_staff.address, aniversary_date: @non_teaching_staff.aniversary_date, date_of_birth: @non_teaching_staff.date_of_birth, date_of_joining: @non_teaching_staff.date_of_joining, email: @non_teaching_staff.email, father_name: @non_teaching_staff.father_name, full_name: @non_teaching_staff.full_name, married: @non_teaching_staff.married, mobile: @non_teaching_staff.mobile, qualification: @non_teaching_staff.qualification, role: @non_teaching_staff.role, spouse_name: @non_teaching_staff.spouse_name }
    assert_redirected_to non_teaching_staff_path(assigns(:non_teaching_staff))
  end

  test "should destroy non_teaching_staff" do
    assert_difference('NonTeachingStaff.count', -1) do
      delete :destroy, id: @non_teaching_staff
    end

    assert_redirected_to non_teaching_staffs_path
  end
end
