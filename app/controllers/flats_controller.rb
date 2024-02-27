class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = Flat.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
  end
  def show
    @flat = Flat.find(params[:id])
  end
end
