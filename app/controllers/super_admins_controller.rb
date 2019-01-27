class SuperAdminsController < ActionController::Base
  before_action :authenticate_super_admin!

  def dashboard
    @users = User.all
  end

  def delete_user
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(dashboard_super_admins_path)
  end

end
