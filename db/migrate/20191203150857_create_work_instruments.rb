class CreateWorkInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :work_instruments do |t|
      t.references :musical_work, foreign_key: true
      t.references :instrument, foreign_key: true
      t.string :sheet_pdf
      t.integer :quantity

      t.timestamps
    end
  end
end
