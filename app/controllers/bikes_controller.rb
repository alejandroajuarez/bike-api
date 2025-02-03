class BikesController < ApplicationController

  def index
    @bikes = Bike.all
    render :index
  end

  def show
    id_find = params[:id]
    @bike = Bike.find_by(id: id_find)
  end

  def create
    @bike = Bike.new(
      name:         params[:name],
      brand:        params[:brand],
      model_year:   params[:model_year],
      price:        params[:price],
      description:  params[:description],
      category:     params[:category]
    )
    @bike.save
    render :show
  end

  def update
    @bike = Bike.find_by(id: params[:id])
    @bike.name          = params[:name]
    @bike.brand         = params[:brand]
    @bike.model_year    = params[:model_year]
    @bike.price         = params[:price]
    @bike.description   = params[:description]
    @bike.category      = params[:category]
    render :show
  end

  def destroy
    bike = Bike.find_by(id: params[:id])
    bike.destroy
    render json: { message: "Bike entry has been destroyed!" }
  end
end
