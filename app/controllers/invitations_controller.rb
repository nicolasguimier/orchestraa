class InvitationsController < ApplicationController
  def index
    @invitations = current_user.invitations.order(updated_at: :desc)
    @invitations_pending = current_user.invitations.order(updated_at: :desc).where(status: 'pending')
    @invitations_accepted = current_user.invitations.order(updated_at: :desc).where(status: 'accepted')
    @invitations_rejected = current_user.invitations.order(updated_at: :desc).where(status: 'rejected')

    @invitation = Invitation.new
    @instruments = Instrument.all

    @invitations_pending = current_user.invitations.order(id: :desc).where(status: 'pending')
    @concerts = current_user.concerts
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

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.user = current_user
    @invitation.sendinblue_email_id = "test"
    @invitation.email_delivered = true
    if @invitation.save
      redirect_to invitation_path(@invitation)
    else
      raise
    end
  end

  def show
    @invitation = Invitation.find(params[:id])
    @concerts = current_user.concerts
    # We split the works by group of 3, because email template is displaying in 3 columns
    @musical_works_groups = current_user.musical_works.first(7).each_slice(3)
  end

  def accept
    change_status_to('accepted')
    redirect_to "/invitations?status=accepted", notice: "The invitation is now accepted."
    # flash.notice = "The invitation is now accepted."
  end

  def send_email
    change_status_to('pending')
    redirect_to "/invitations?status=pending", notice: "The invitation has been sent."
    # flash.notice = "The invitation is now sent."
  end

  def decline
    change_status_to('rejected')
    redirect_to "/invitations?status=rejected", notice: "The invitation is marked as 'Rejected'."
    # flash.notice = "The invitation is marked as 'Rejected'."
  end

  private

  def invitation_params
    params.require(:invitation).permit(:instrument_id, :email, :full_name, :message)
  end

  def change_status_to(string)
    @invitation = Invitation.find(params[:id])
    @invitation.status = string
    @invitation.save
  end


end
