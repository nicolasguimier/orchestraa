class ConcertsController < ApplicationController
  def index
    @concerts = current_user.concerts.geocoded

    @markers = @concerts.map do |concert|
      {
        lat: concert.latitude,
        lng: concert.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { concert: concert }),
        image_url: helpers.asset_url('marker_map.svg')
      }
    end
  end

  def show
    @concert = Concert.find(params[:id])
    @program_steps = @concert.program_steps
  end

  def update
  end
end
