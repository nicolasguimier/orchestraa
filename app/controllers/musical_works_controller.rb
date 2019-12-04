class MusicalWorksController < ApplicationController
  def index
    @musical_works = current_user.musical_works
  end

  def show
    @musical_work = MusicalWork.find(params[:id])
  end
end
