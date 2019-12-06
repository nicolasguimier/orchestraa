class DashboardsController < ApplicationController
  def show
    @invitations = Invitation.all
    @concerts = Concert.all
    @pending_works = MusicalWork.first(10)


    # For the musicians calculations
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
    @missing_strings = @accepted_invites_count_per_instrument_category[:Strings] == @total_instruments_needed[:Strings] ? false : true
    @missing_brass = @accepted_invites_count_per_instrument_category[:Brass] == @total_instruments_needed[:Brass] ? false : true
    @missing_woodwinds = @accepted_invites_count_per_instrument_category[:Woodwinds] == @total_instruments_needed[:Woodwinds] ? false : true
    @missing_percussions = @accepted_invites_count_per_instrument_category[:Percussions] == @total_instruments_needed[:Percussions] ? false : true
    @missing_keyboards = @accepted_invites_count_per_instrument_category[:Keyboard] == @total_instruments_needed[:Keyboard] ? false : true
  end
end
