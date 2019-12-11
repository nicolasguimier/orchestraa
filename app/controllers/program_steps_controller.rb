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

  def add_intermission
    @intermission = ProgramStep.new
    @intermission.kind = "intermission"
    @intermission.concert = Concert.find(params[:concert_id])
    @intermission.insert_at(1)

    if @intermission.save
      redirect_to concert_path(params[:concert_id])
    else
      raise
    end
  end

  def destroy
    @program_step = ProgramStep.find(params[:id])
    if @program_step.destroy
      redirect_to concert_path(params[:concert_id])
      # respond_to do |format|
      #   format.js
      # end
    else
      raise
    end
  end
end
