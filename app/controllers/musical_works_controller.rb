class MusicalWorksController < ApplicationController
  def index
    @musical_works = current_user.musical_works
  end

  def show
    @musical_work = MusicalWork.find(params[:id])
    @all_work_instruments = @musical_work.work_instruments
    @work_instruments = generate_instruments_hash
  end

  def load_orchestra_composition
    # @composition = OrchestraComposition.first
    @composition = {
      "Strings" => [
        {
          "name" => "Violin1",
          "category" => "Strings",
          "position" => 4,
          "quantity" => 3,
          "pdf" => ""
        },
        {
          "name" => "Violin2",
          "category" => "Strings",
          "position" => 5,
          "quantity" => 2,
          "pdf" => ""
        }
      ],
      "Brass" => [],
      "Woodwinds" => [],
      "Percussions" => [],
      "Keyboards" => [
        {
          "name" => "Bandoneon",
          "category" => "Keyboards",
          "position" => 1,
          "quantity" => 1,
          "pdf" => ""
        }
      ]
    }
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
    works_instruments = @musical_work.work_instruments
    works_instruments.each do |work_instr|
      instruments[work_instr.instrument.category] << work_instr
    end
    return instruments
    # instruments = {
    #   "Strings" => [
    #     {
    #       "name" => "Violin1",
    #       "category" => "Strings",
    #       "position" => 4,
    #       "quantity" => 3,
    #       "pdf" => ""
    #     },
    #     {
    #       "name" => "Violin2",
    #       "category" => "Strings",
    #       "position" => 5,
    #       "quantity" => 2,
    #       "pdf" => ""
    #     }
    #   ],
    #   "Brass" => [],
    #   "Woodwinds" => [],
    #   "Percussions" => [],
    #   "Keyboards" => [
    #     {
    #       "name" => "Bandoneon",
    #       "category" => "Keyboards",
    #       "position" => 1,
    #       "quantity" => 1,
    #       "pdf" => ""
    #     }
    #   ]
    # }
  end
end
