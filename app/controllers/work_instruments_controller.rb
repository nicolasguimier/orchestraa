class WorkInstrumentsController < ApplicationController
  def create
    @work_instrument = WorkInstrument.new(work_instrument_params)
    @work_instrument.musical_work_id = params[:musical_work_id]
    if @work_instrument.save
      redirect_to musical_work_path(params[:musical_work_id])
    else
      render nothing: true
    end
  end

  def update
    @work_instrument = WorkInstrument.find(params[:id])
    @work_instrument.update(work_instrument_params)

    redirect_to musical_work_path(@work_instrument.musical_work)
  end

  def destroy
  end

  private

  def work_instrument_params
    params.require(:work_instrument).permit(:instrument_id, :musical_work, :sheet_pdf)
  end
end
