class WorkInstrumentsController < ApplicationController
  def create
    @work_instrument = WorkInstrument.new(work_instr_params)
    if @work_instrument.save
      redirect_to musical_work(params[:musical_work])
    else
      render nothing: true
    end
  end

  def update
  end

  def destroy
  end

  private

  def work_instr_params
    params.require(:work_instrument).permit(:musical_work)
  end
end
