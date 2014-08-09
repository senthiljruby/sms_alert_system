class StudentsController < InheritedResources::Base
  before_filter :authenticate

  def index
    if params[:search]
      @students = Student.search(params[:search])
                         .paginate(:page => params[:page], :per_page => 10, :order => 'created_at DESC')
    else
      @students = Student.paginate(:page => params[:page], :per_page => 10, :order => 'created_at DESC')
    end    
  end

  def build_resource_params
    [params.fetch(:student, {}).permit(:name, :father_name,
                                       :standard, :section,
                                       :phone_number,
                                       :email, :address, :dob)]
  end
end
