class InstrumentsController < ApplicationController
  def index
    category = params[:category]
    if category
      @instruments = Instrument.where(category: category)
    else
      @instruments = Instrument.all
    end
    respond_to do |format|
      format.js
    end
  end
end
