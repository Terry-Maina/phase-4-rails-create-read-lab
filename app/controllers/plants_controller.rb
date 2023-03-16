class PlantsController < ApplicationController

    wrap_parameters format: []

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plants = Plant.find(params[:id])
        render json: plants
    end

    def create
        plants = Plant.create(plants_params)
        render json: plants, status: :created
    end

    private

    def plants_params
        params.permit(:name, :image, :price)
    end


end