class AccessorriesController < ApplicationController
  before_action :set_accessorry, only: %i[ show edit update destroy ]

  # GET /accessorries or /accessorries.json
  def index
    @accessorries = Accessorry.all
  end

  # GET /accessorries/1 or /accessorries/1.json
  def show
  end

  # GET /accessorries/new
  def new
    @accessorry = Accessorry.new
  end

  # GET /accessorries/1/edit
  def edit
  end

  # POST /accessorries or /accessorries.json
  def create
    @accessorry = Accessorry.new(accessorry_params)

    respond_to do |format|
      if @accessorry.save
        format.html { redirect_to @accessorry, notice: "Accessorry was successfully created." }
        format.json { render :show, status: :created, location: @accessorry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @accessorry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessorries/1 or /accessorries/1.json
  def update
    respond_to do |format|
      if @accessorry.update(accessorry_params)
        format.html { redirect_to @accessorry, notice: "Accessorry was successfully updated." }
        format.json { render :show, status: :ok, location: @accessorry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @accessorry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessorries/1 or /accessorries/1.json
  def destroy
    @accessorry.destroy
    respond_to do |format|
      format.html { redirect_to accessorries_url, notice: "Accessorry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessorry
      @accessorry = Accessorry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accessorry_params
      params.require(:accessorry).permit(:name, :speed, :efficency, :power)
    end
end
