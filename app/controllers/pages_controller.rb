class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @flats = Flat.all.where(featured: true).order(created_at: :desc).limit(3)
  end
end
