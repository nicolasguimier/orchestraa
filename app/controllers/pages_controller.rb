class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing, :jeremie, :maxime, :nicolas]

  def landing
  end

  def jeremie
    @concerts = current_user.concerts.geocoded

    @markers = @concerts.map do |concert|
      {
        lat: concert.latitude,
        lng: concert.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { concert: concert }),
        image_url: helpers.asset_url('marker_map.svg')
      }
    end
  end

  def maxime
    initial_invites_count_per_instrument_category = {
      "Strings"=>0,
      "Woodwinds"=>0,
      "Percussions"=>0,
      "Keyboard"=>0,
      "Brass" => 0
    }

    # For now, hardcoded, we'll see next week if we have time to make it dynamic
    @total_instruments_needed = {
      Strings: 12,
      Woodwinds: 6,
      Brass: 2,
      Percussions: 1,
      Keyboard: 1
    }

    accepted_invites = Invitation.where(status: :accepted)

    results = accepted_invites.group_by do |invite|
      invite.instrument.category
    end

    accepted_invites_count_per_instrument_category = results.map do |instrument_category, invitations|
      [instrument_category, invitations.count]
    end

    @accepted_invites_count_per_instrument_category = initial_invites_count_per_instrument_category
                                                      .merge(accepted_invites_count_per_instrument_category.to_h)
                                                      .symbolize_keys
  end

  def nicolas
  end
end
