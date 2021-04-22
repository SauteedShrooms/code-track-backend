class PaintsController < ApplicationController

   def index 
      paints = Paint.all
      render json: paints
   end 
   
   def create
      paint = Paint.create!({ 
         partType: permitted_params['partType'],
         name: permitted_params['name'],
         image: permitted_params['image']
      })
      render json: paint
   end

   def show
      paint = Paint.find_by(id: params[:id])
      render json: paint
   end

   def permitted_params
      params.require(:paint).permit(:partType, :name, :image)
   end

end
