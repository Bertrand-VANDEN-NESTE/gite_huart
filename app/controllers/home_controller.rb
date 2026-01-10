class HomeController < ApplicationController
  def index
    @home_photos = HomePhoto.all
  end
end
