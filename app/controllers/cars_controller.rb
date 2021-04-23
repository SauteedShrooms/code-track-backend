class CarsController < ApplicationController
  
  def create
    
    car = Car.create({
        name: permitted_params['name'],
        image: permitted_params['image'],
        user_id: permitted_params['user_id'],
        body_id: permitted_params['body_id'],
        paint_id: permitted_params['paint_id'],
        wheel_id: permitted_params['wheel_id'],
        spoiler_id: permitted_params['spoiler_id'],
    })
    
    render json: car
    
  end

  def index 
      # cars = Car.where(user_id: params['user_id'])
      cars = Car.all
      render json: cars
  end 

  def show
      car = Car.find_by(id: params[:id])
      render json: car
  end

  def destroy
      car = Car.find_by(id: params[:id])
      car.destroy
  end

  def update
      car = Car.find_by(id: params[:id])
      car.update!(permitted_params)
      render json: car
  end

  def permitted_params
      params.require(:car).permit(:name, :image, :user_id, :body_id, :paint_id, :wheel_id, :spoiler_id)
  end

end
