class WheelsController < ApplicationController

   def index 
      wheels = Wheel.all
      render json: wheels
   end 

   def create
      wheel = Wheel.create!({ 
         partType: permitted_params['partType'],
         name: permitted_params['name'],
         image: permitted_params['image'],
         speed: permitted_params['speed'],
         efficency: permitted_params['efficency'],
         power: permitted_params['power']
      })
      render json: wheel
   end

   def show
      wheel = Wheel.find_by(id: params[:id])
      render json: wheel
   end 

   def permitted_params
      params.require(:wheel).permit(:partType, :name, :image, :speed, :efficency, :power)
   end

end
