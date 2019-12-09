class ConcertsController < ApplicationController
  def index
    @concerts = current_user.concerts.geocoded
  end

  def show
    @concert = Concert.find(params[:id])
    @program_steps = @concert.program_steps.order(position: :asc)
    @markers = []
    @markers.push(
      {
        lat: @concert.latitude,
        lng: @concert.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { concert: concert }),
        image_url: helpers.asset_url('marker_map.svg')
      })
  end

  def update
  end
end
