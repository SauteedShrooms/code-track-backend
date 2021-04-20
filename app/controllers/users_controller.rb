class UsersController < ApplicationController
  #skip_before_action :authorized, only: [:create]

  def index 
      users = User.all
      render json: users
  end 

  def create
      user = User.create!({ 
          name: permitted_params['name'],
          username: permitted_params['username'], 
          password: permitted_params['password'],
          age: permitted_params['age'],
          email: permitted_params['email'],
          avatar: permitted_params['avatar'],
      })
      render json: user
  end

  def show
      user = User.find_by(id: params[:id])
      render json: user
  end 

  def permitted_params
      params.require(:user).permit(:name, :username, :password, :email, :age, :avatar)
  end

  def token_authenticate
      token = request.headers["Authorization"]
      user = User.find(decoded_token[0]['user_id'])
      render json:user 
  end 

  def signup
     
    user = User.create(
        name: params[:user][:name],
        username: params[:user][:username],
        password: params[:user][:password],
        email: params[:user][:email],
        age: params[:user][:age],
        avatar: params[:user][:avatar] 
        # "https://www.peterbe.com/avatar.random.png"
    ) 
    
    if user.save
        render json: {
            auth: true,
            user: user,
            # tags: [],
            # token: encode({user_id: user.id})
        }
    else
        render json: {
            auth: false,
            info: user.errors.full_messages
        }
    end
end

    

end 
