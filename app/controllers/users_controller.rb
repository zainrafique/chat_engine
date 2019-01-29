class UsersController < ActionController::Base
  layout 'application'

  before_action :authenticate_user!

  def dashboard
    @users = User.all
  end

  def inbox
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

end
