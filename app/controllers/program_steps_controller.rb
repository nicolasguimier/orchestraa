class ProgramStepsController < ApplicationController
  def update
    @program_step = ProgramStep.find(params[:id])
    # @concert = Concert.find(params[:concert_id])
    # @concert.program_steps.first.move_to_bottom
    position = params[:position] + 1
    @program_step.insert_at(position)
  end

  def add_work
  end

  def intermission

  end

  def destroy
    @program_step = ProgramStep.find(params[:id])
    @concert = Concert.find(params[:concert_id])
    if @program_step.destroy
      redirect_to concert_path(@concert)
      # respond_to do |format|
      #   format.js
      # end
    else
      raise
    end
  end
end
