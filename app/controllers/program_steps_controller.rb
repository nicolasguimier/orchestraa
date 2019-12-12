class ProgramStepsController < ApplicationController
  def update
    @program_step = ProgramStep.find(params[:id])
    # @concert = Concert.find(params[:concert_id])
    # @concert.program_steps.first.move_to_bottom
    position = params[:position] + 1
    @program_step.insert_at(position)
  end

  def add_work
    add_program_step("musical_work")
    @step.musical_work = MusicalWork.find(params[:work_id])
    save_program_step
  end

  def add_intermission
    add_program_step("intermission")
    save_program_step
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

  private

  def add_program_step(kind)
    @step = ProgramStep.new
    @step.concert = Concert.find(params[:concert_id])
    @step.kind = kind
    @step.insert_at(1)
  end

  def save_program_step
    if @step.save
      redirect_to concert_path(params[:concert_id])
    else
      raise
    end
  end
end
