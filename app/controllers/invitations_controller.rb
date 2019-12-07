class InvitationsController < ApplicationController
  def index
    @invitations = current_user.invitations.order(id: :desc)
    @invitations_pending = current_user.invitations.order(id: :desc).where(status: 'pending')
    @invitations_accepted = current_user.invitations.order(id: :desc).where(status: 'accepted')
    @invitations_rejected = current_user.invitations.order(id: :desc).where(status: 'rejected')

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
    change_status_to('accepted')
    flash.success = "The invitation is now accepted."
  end

  def decline
    change_status_to('rejected')
    flash.success = "The invitation is marked as 'Rejected'."
  end

  private

  def invitation_params
    params.require(:invitation).permit(:instrument_id, :email, :full_name)
  end

  def change_status_to(string)
    @invitation = Invitation.find(params[:id])
    @invitation.status = string
    @invitation.save
    redirect_to invitations_path
  end
end
