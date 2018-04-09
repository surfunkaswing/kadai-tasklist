class UsersController < ApplicationController

  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks.order('created_at DESC').page(params[:page])
    counts(@user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
#      flash[:success] = 'ユーザを登録しました。'
#      redirect_to @user
      email = user_params[:email].downcase
      password = user_params[:password]
      if login(email, password)
        flash[:success] = 'ユーザー登録に成功し、ログインしました。'
        redirect_to tasks_url
      else
        flash.now[:danger] = 'ユーザー登録に成功しましたが、ログインに失敗しました。'
        render 'new'
      end
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
