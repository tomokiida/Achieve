class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    if params[:back]
      redirect_to users_path
    end
  end
end
