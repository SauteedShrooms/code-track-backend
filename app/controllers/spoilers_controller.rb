class SpoilersController < ApplicationController

   def index 
      spoilers = Spoiler.all
      render json: spoilers
   end 

   def create
      spoiler = Spoiler.create!({ 
         name: permitted_params['name'],
         image: permitted_params['image'],
         speed: permitted_params['speed'],
         efficency: permitted_params['efficency'],
         power: permitted_params['power']
      })
      render json: spoiler
   end

   def show
      spoiler = Spoiler.find_by(id: params[:id])
      render json: spoiler
   end 

   def permitted_params
      params.require(:spoiler).permit(:name, :image, :speed, :efficency, :power)
   end
   
end
