class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new
    @user = User.new
  end
  def partprofile

  end
  def createpartprofile
    @partprofile = Partprofile.new(params.require(:form).permit(:name,:time,:job))
    @partprofile.username = current_user.username
    @partprofile.save
    redirect_to '/welcome'
  end
  def fullprofile

  end
  def createfullprofile
    @fullprofile = Fullprofile.new(params.require(:form).permit(:name,:company,:taxcode,:address,:position))
    @fullprofile.username = current_user.username
    @fullprofile.save
    redirect_to '/welcome'
  end
  def create
    if !User.find_by(username: params[:user][:username])
      @user = User.create(params.require(:user).permit(:username,:password,:typed))
      session[:user_id] = @user.id

      case current_user.typed
      when "parttime"
        redirect_to partprofile_path
      when "fulltime"
        redirect_to fullprofile_path
      end
    else
      redirect_to new_user_url
    end
  end
end
