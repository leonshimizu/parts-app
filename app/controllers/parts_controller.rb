class PartsController < ApplicationController
  def index
    parts = Part.all
    render json: parts
  end

  def create
    part = Part.new(
      name: params[:name], 
      price: params[:price], 
      og_website: params[:og_website], 
      ships: params[:ships]
    )
    part.save
    render json: part
  end

  def show
    the_id = params[:id]
    part = Part.find(the_id)
    render json: part
  end

  def update
    the_id = params[:id]
    part = Part.find(the_id)
    part.name = params[:name] || part.name
    part.price = params[:price] || part.price
    part.og_website = params[:og_website] || part.og_website
    part.ships = params[:ships] || part.ships
    part.save
    render json: part
  end

  def destroy
    the_id = params[:id]
    part = Part.find(the_id)
    part.destroy
    render json: {message: "Successfully deleted"}
  end
end
