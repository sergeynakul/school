class Admin::TeachersController < Admin::BaseController
  add_breadcrumb 'Преподаватели', :admin_teachers_path
  before_action :set_teacher, only: [:edit, :update, :destroy]

  def index
    @teachers = Teacher.order(id: :desc).page(params[:page])
  end

  def new
    add_breadcrumb 'Новый Преподаватель', new_admin_teacher_path
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to admin_teachers_path, notice: 'Преподаватель успешно создан'
    else
      add_breadcrumb 'Новый Преподаватель', new_admin_teacher_path
      flash.now[:alert] = 'Не удалось создать преподавателя'
      render :new
    end
  end

  def edit
    add_breadcrumb "Редактировать #{@teacher.first_name} #{@teacher.last_name}", edit_admin_teacher_path
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to admin_teachers_path, notice: 'Преподаватель успешно изменен'
    else
      add_breadcrumb "Редактировать #{@teacher.first_name} #{@teacher.last_name}", edit_admin_teacher_path
      flash.now[:alert] = 'Не удалось изменить преподавателя'
      render :edit
    end    
  end

  def destroy
    if @teacher.destroy
      redirect_to admin_teachers_path, notice: 'Преподаватель успешно удален'
    else
      redirect_to admin_teachers_path, alert: 'Не удалось удалить Преподавателя'
    end
  end

  private

  def set_active_main_menu_item
    @main_menu[:teachers][:active] = true
  end

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :description)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
