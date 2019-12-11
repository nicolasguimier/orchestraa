class MusicalWork < ApplicationRecord
  belongs_to :user
  # has_many :program_steps
  has_many :work_instruments, dependent: :destroy

  validates :title, presence: true

  def missing_sheets
    instruments_list = []
    work_instruments = self.work_instruments
    work_instruments.each do |work_instr|
      unless work_instr.sheet_pdf.url
        instruments_list << work_instr.instrument.name
      end
    end
    return instruments_list
  end
end
