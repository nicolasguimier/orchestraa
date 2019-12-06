class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing, :jeremie, :maxime, :nicolas]

  def landing
  end

  def jeremie
    @concerts = current_user.concerts.geocoded

    @markers = @concerts.map do |concert|
      {
        lat: concert.latitude,
        lng: concert.longitude
        # infoWindow: render_to_string(partial: "info_window", locals: { concert: concert }),
        # image_url: helpers.asset_url('marker_map.svg')
      }
    end
  end

  def maxime
  end

  def nicolas
  end
end
