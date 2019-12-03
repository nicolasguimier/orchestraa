class WorkInstrument < ApplicationRecord
  belongs_to :musical_work
  belongs_to :instrument

  validates :quantity, presence: true

  mount_uploader :sheet_pdf, PdfUploader
end
