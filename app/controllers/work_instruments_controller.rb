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

  def load_orchestra_composition
    load_work_instruments
    save_work_instruments
    redirect_to musical_work_path(params[:musical_work_id])
  end

  private

  def work_instrument_params
    params.require(:work_instrument).permit(:instrument_id, :musical_work, :sheet_pdf, :quantity)
  end

  def load_work_instruments
    @work_instruments = OrchestraComposition.first.composition
    # @work_instruments = {
    #   test_instruments[0].id => 1,
    #   test_instruments[1].id => 2,
    #   test_instruments[2].id => 3,
    #   test_instruments[3].id => 4,
    #   test_instruments[4].id => 5
    # }
  end

  def save_work_instruments
    @work_instruments.each do |instrument|
      work_instrument = WorkInstrument.new(
        musical_work: MusicalWork.find(params[:musical_work_id]),
        instrument: Instrument.find(instrument["instrument_id"]),
        quantity: instrument["quantity"]
      )
      raise unless work_instrument.save
    end
  end
end
