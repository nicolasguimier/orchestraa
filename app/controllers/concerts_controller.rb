class ConcertsController < ApplicationController
  def index
    @concerts = current_user.concerts
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def update
  end
end
