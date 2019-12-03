class CreateProgramSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :program_steps do |t|
      t.references :concert, foreign_key: true
      t.references :musical_work, foreign_key: true
      t.integer :position
      t.string :kind

      t.timestamps
    end
  end
end
