class SpoilersController < ApplicationController
  before_action :set_spoiler, only: %i[ show edit update destroy ]

  # GET /spoilers or /spoilers.json
  def index
    @spoilers = Spoiler.all
  end

  # GET /spoilers/1 or /spoilers/1.json
  def show
  end

  # GET /spoilers/new
  def new
    @spoiler = Spoiler.new
  end

  # GET /spoilers/1/edit
  def edit
  end

  # POST /spoilers or /spoilers.json
  def create
    @spoiler = Spoiler.new(spoiler_params)

    respond_to do |format|
      if @spoiler.save
        format.html { redirect_to @spoiler, notice: "Spoiler was successfully created." }
        format.json { render :show, status: :created, location: @spoiler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spoiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spoilers/1 or /spoilers/1.json
  def update
    respond_to do |format|
      if @spoiler.update(spoiler_params)
        format.html { redirect_to @spoiler, notice: "Spoiler was successfully updated." }
        format.json { render :show, status: :ok, location: @spoiler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spoiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spoilers/1 or /spoilers/1.json
  def destroy
    @spoiler.destroy
    respond_to do |format|
      format.html { redirect_to spoilers_url, notice: "Spoiler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spoiler
      @spoiler = Spoiler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spoiler_params
      params.require(:spoiler).permit(:name, :speed, :efficency, :power)
    end
end
