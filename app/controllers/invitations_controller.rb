class InvitationsController < ApplicationController
  def index
    @invitations = current_user.invitations.order(id: :desc)
    @invitation = Invitation.new
    @instruments = Instrument.all
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.user = current_user
    @invitation.sendinblue_email_id = "test"
    @invitation.email_delivered = true
    if @invitation.save
      redirect_to invitations_path
    else
      render :new
    end
  end

  def accept
  end

  def decline
  end

  private

  def invitation_params
    params.require(:invitation).permit(:instrument_id, :email, :full_name)
  end
end
