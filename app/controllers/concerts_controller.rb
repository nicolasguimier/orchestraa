class ConcertsController < ApplicationController
  def index
    @concerts = current_user.concerts
  end

  def show
    @concert = Concert.find(params[:id])
    @program_steps = @concert.program_steps
  end

  def update
  end
end
