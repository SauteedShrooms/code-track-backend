class BodiesController < ApplicationController

   def index 
      bodies = Body.all
      render json: bodies
   end 

   def create
      body = Body.create!({ 
         name: permitted_params['name'],
         image: permitted_params['image'],
         speed: permitted_params['speed'],
         efficency: permitted_params['efficency'],
         power: permitted_params['power']
      })
      render json: body
   end

   def show
      body = Body.find_by(id: params[:id])
      render json: body
   end 

   def permitted_params
      params.require(:body).permit(:name, :image, :speed, :efficency, :power)
   end

end
