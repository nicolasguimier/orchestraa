class WorkInstrument < ApplicationRecord
  belongs_to :musical_work
  belongs_to :instrument

  mount_uploader :sheet_pdf, PdfUploader
end
