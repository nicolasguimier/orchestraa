class DashboardsController < ApplicationController
  def show
    @invitations = Invitation.all
    @invitations_strings = Invitation.all
    @invitations_woodwinds = Invitation.all
    @invitations_brass = Invitation.all
    @invitations_percussion = Invitation.all
    @invitations_keyboards = Invitation.all

    @concerts = Concert.all

    @pending_works = MusicalWork.first(10)
  end
end
