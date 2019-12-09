class InvitationsController < ApplicationController
  def index
    @invitations = current_user.invitations.order(updated_at: :desc)
    @invitations_pending = current_user.invitations.order(updated_at: :desc).where(status: 'pending')
    @invitations_accepted = current_user.invitations.order(updated_at: :desc).where(status: 'accepted')
    @invitations_rejected = current_user.invitations.order(updated_at: :desc).where(status: 'rejected')

    @invitation = Invitation.new
    @instruments = Instrument.all
  end

  def create
    @invitation = Invitation.new(invitation_params)
    @invitation.user = current_user
    @invitation.sendinblue_email_id = "test"
    @invitation.email_delivered = true
    if @invitation.save
      if params[:commit] == "Preview"
        redirect_to preview_invitation_path(@invitation)
      else
        if send_email
          redirect_to invitations_path, notice: "The invitation has been sent."
        else
          raise
        end
      end
    else
      render nothing: true
    end
  end

  def preview
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

  def send_email
    true
  end
end
