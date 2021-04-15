class WheelsController < ApplicationController
  before_action :set_wheel, only: %i[ show edit update destroy ]

  # GET /wheels or /wheels.json
  def index
    @wheels = Wheel.all
  end

  # GET /wheels/1 or /wheels/1.json
  def show
  end

  # GET /wheels/new
  def new
    @wheel = Wheel.new
  end

  # GET /wheels/1/edit
  def edit
  end

  # POST /wheels or /wheels.json
  def create
    @wheel = Wheel.new(wheel_params)

    respond_to do |format|
      if @wheel.save
        format.html { redirect_to @wheel, notice: "Wheel was successfully created." }
        format.json { render :show, status: :created, location: @wheel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wheels/1 or /wheels/1.json
  def update
    respond_to do |format|
      if @wheel.update(wheel_params)
        format.html { redirect_to @wheel, notice: "Wheel was successfully updated." }
        format.json { render :show, status: :ok, location: @wheel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wheels/1 or /wheels/1.json
  def destroy
    @wheel.destroy
    respond_to do |format|
      format.html { redirect_to wheels_url, notice: "Wheel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wheel
      @wheel = Wheel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wheel_params
      params.require(:wheel).permit(:name, :speed, :efficency, :power)
    end
end
