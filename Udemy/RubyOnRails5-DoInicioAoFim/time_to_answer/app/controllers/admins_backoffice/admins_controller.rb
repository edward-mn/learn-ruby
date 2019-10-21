class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action :verify_password, only: [:update]
  before_action :set_admin, only: %i[edit update destroy]
  NAME_SPACE_ADMIN = 'Admin'

  def index
    @admins = Admin.all.page(params[:page])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to admins_backoffice_admins_path, notice: helpers.message_notify(NAME_SPACE_ADMIN, 'Criado')
    else
      render :new
    end
  end

  def update
    if @admin.update(params_admin)
      redirect_to admins_backoffice_admins_path, notice: helpers.message_notify(NAME_SPACE_ADMIN, 'Atualizado')
    else
      render :edit
    end
  end

  def destroy
    if @admin.destroy
      redirect_to admins_backoffice_admins_path, notice: helpers.message_notify(NAME_SPACE_ADMIN, 'Excluído')
    else
      render :index
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def verify_password
    check_admins_params(:password) && check_admins_params(:password_confirmation)
  end

  def check_admins_params(param)
    if params[:admin][param].blank?
      params[:admin].extract!(param)
    end
  end
end
