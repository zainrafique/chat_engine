class SuperAdminsController < ActionController::Base
  before_action :authenticate_super_admin!

  def dashboard

  end

end
