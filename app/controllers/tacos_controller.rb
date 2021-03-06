class TacosController < ApplicationController
  before_action :set_taco, only: [:show, :update, :destroy]

  # GET /tacos
  def index
    @tacos = Taco.all

    render json: @tacos, except: [:created_at, :updated_at, :category_id], include: [:category]
  end

  # GET /tacos/1
  def show
    render json: @taco, except: [:created_at, :updated_at, :category_id], include: [:category]
  end

  # POST /tacos
  def create
    @taco = Taco.new(taco_params)

    if @taco.save
      render json: @taco, status: :created, location: @taco, except: [:created_at, :updated_at, :category_id], include: [:category]
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tacos/1
  def update
    if @taco.update(taco_params)
      render json: @taco, except: [:created_at, :updated_at, :category_id], include: [:category]
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tacos/1
  def destroy
    @taco.destroy

    render json: @taco
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taco
      @taco = Taco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taco_params
      params.require(:taco).permit(:category_attributes, :name, :image, :description, :likes, :restaurant, :url, :location)
    end
end
