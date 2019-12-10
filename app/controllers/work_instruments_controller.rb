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
    @work_instrument = WorkInstrument.find(params[:id])
    @work_instrument.update(work_instr_params)

    redirect_to musical_work_path(@work_instrument.musical_work)
  end

  def destroy
  end

  private

  def work_instr_params
    params.require(:work_instrument).permit(:musical_work, :sheet_pdf)
  end
end
