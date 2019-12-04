class InvitationsController < ApplicationController
  def index
    @invitations = current_user.invitations
  end

  def create
  end

  def accept
  end

  def decline
  end
end
