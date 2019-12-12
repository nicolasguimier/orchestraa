class MusicalWorksController < ApplicationController
  def index
    @musical_works = current_user.musical_works
  end

  def show
    $instrument_categories = ["Strings","Brass","Woodwinds","Percussions","Keyboards"]

    @musical_work = MusicalWork.find(params[:id])
    @work_instruments = generate_instruments_hash
    @missing_categories = missing_categories
  end

  def create
    @musical_work = MusicalWork.create(
      user: current_user,
      title: 'New ',
      composer_name: 'Bethoveen',
      duration: 45,
      notes: ""
    )
    redirect_to musical_work_path(@musical_work)
  end

  private

  def generate_instruments_hash
    instruments = {
      "Strings" => [],
      "Brass" => [],
      "Woodwinds" => [],
      "Percussions" => [],
      "Keyboards" => []
    }
    work_instruments = @musical_work.work_instruments.joins(:instrument).order('instruments.position')
    work_instruments.each do |work_instr|
      instruments[work_instr.instrument.category] << work_instr
    end
    return instruments


    # {
    #   "Strings"=>[

    #     WorkInstrument id: 3116, musical_work_id: 2739, instrument_id: 2264, quantity: 4,
    #     WorkInstrument id: 3118, musical_work_id: 2739, instrument_id: 2265, quantity: 3,
    #     WorkInstrument id: 3122, musical_work_id: 2739, instrument_id: 2266, quantity: 2,
    #     WorkInstrument id: 3126, musical_work_id: 2739, instrument_id: 2268, quantity: 1,
    #   ],
    #     "Brass"=>[
    #     WorkInstrument id: 3120, musical_work_id: 2739, instrument_id: 2281, quantity: 2,,

    #     WorkInstrument id: 3123, musical_work_id: 2739, instrument_id: 2282, quantity: 2,
    #     WorkInstrument id: 3119, musical_work_id: 2739, instrument_id: 2285, quantity: 1,
    #   ],
    #     "Woodwinds"=>[
    #     WorkInstrument id: 3121, musical_work_id: 2739, instrument_id: 2270, quantity: 1,,
    #     WorkInstrument id: 3117, musical_work_id: 2739, instrument_id: 2273, quantity: 3,
    #   ],
    #     "Percussions"=>[
    #     WorkInstrument id: 3127, musical_work_id: 2739, instrument_id: 2289, quantity: 1,,
    #     WorkInstrument id: 3124, musical_work_id: 2739, instrument_id: 2290, quantity: 1,
    #   ],
    #     "Keyboards"=>[
    #     WorkInstrument id: 3125, musical_work_id: 2739, instrument_id: 2296, quantity: 1,
    #   ]
    # }

  end

  def missing_categories
    empty_categories = []
    @work_instruments.each do |category, instruments|
      empty_categories << category if instruments.empty?
    end
    return empty_categories
  end
end
