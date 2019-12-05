class MusicalWorksController < ApplicationController
  def index
    @musical_works = current_user.musical_works
  end

  def show
    @musical_work = MusicalWork.find(params[:id])
    @work_instruments = @musical_work.work_instruments
  end
end
