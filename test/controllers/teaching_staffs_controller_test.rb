require 'test_helper'

class TeachingStaffsControllerTest < ActionController::TestCase
  setup do
    @teaching_staff = teaching_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_staff" do
    assert_difference('TeachingStaff.count') do
      post :create, teaching_staff: { aniversary_date: @teaching_staff.aniversary_date, date_of_birth: @teaching_staff.date_of_birth, date_of_joining: @teaching_staff.date_of_joining, father_name: @teaching_staff.father_name, full_name: @teaching_staff.full_name, married: @teaching_staff.married, qualification: @teaching_staff.qualification, role: @teaching_staff.role, spouse_name: @teaching_staff.spouse_name }
    end

    assert_redirected_to teaching_staff_path(assigns(:teaching_staff))
  end

  test "should show teaching_staff" do
    get :show, id: @teaching_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_staff
    assert_response :success
  end

  test "should update teaching_staff" do
    patch :update, id: @teaching_staff, teaching_staff: { aniversary_date: @teaching_staff.aniversary_date, date_of_birth: @teaching_staff.date_of_birth, date_of_joining: @teaching_staff.date_of_joining, father_name: @teaching_staff.father_name, full_name: @teaching_staff.full_name, married: @teaching_staff.married, qualification: @teaching_staff.qualification, role: @teaching_staff.role, spouse_name: @teaching_staff.spouse_name }
    assert_redirected_to teaching_staff_path(assigns(:teaching_staff))
  end

  test "should destroy teaching_staff" do
    assert_difference('TeachingStaff.count', -1) do
      delete :destroy, id: @teaching_staff
    end

    assert_redirected_to teaching_staffs_path
  end
end
