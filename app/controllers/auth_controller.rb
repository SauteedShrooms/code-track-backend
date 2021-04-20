class AuthController < ApplicationController
 
  # REGISTER
  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     token = encode_token({user_id: @user.id})
  #     render json: {user: @user, token: token}
  #   else
  #     render json: {error: "Invalid username or password"}
  #   end
  # end
 
  # LOGGING IN
  def create
    @user = User.find_by(username: user_params[:username])

    if @user && @user.authenticate(user_params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted 
    else
      render json: {error: "Invalid username or password"}, status: :unauthorized 
    end
  end
 
  # def auto_login
  #   render json: @user
  # end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

#################

  # def create
  #   @user = User.find_by(email: users_params[:email])
  #   if @user && @user.authenticate(users_params[:password])
  #       payload = { user_id: @user.id }
  #       token = JWT.encode(payload,'mySecret','HS256')
  #       render json: { token: token }
  #   else
  #       render json: { msg: "User doesn't exist. Try again!"}
  #   end
  # end

  # private
  # def users_params
  #     params.require(:user).permit(:email,:password)
  # end




end
