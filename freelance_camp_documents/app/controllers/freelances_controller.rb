class FreelancesController < ApplicationController
  before_action :set_freelance, only: [:show, :update, :destroy]

  # GET /freelances
  def index
    @freelances = Freelance.all

    render json: @freelances
  end

  # GET /freelances/1
  def show
    render json: @freelance
  end

  # POST /freelances
  def create
    @freelance = Freelance.new(freelance_params)

    if @freelance.save
      render json: @freelance, status: :created, location: @freelance
    else
      render json: @freelance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /freelances/1
  def update
    if @freelance.update(freelance_params)
      render json: @freelance
    else
      render json: @freelance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /freelances/1
  def destroy
    @freelance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelance
      @freelance = Freelance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def freelance_params
      params.require(:freelance).permit(:title, :description, :file_url, :image_url)
    end
end
