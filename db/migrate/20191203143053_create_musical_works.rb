class CreateMusicalWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :musical_works do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :composer_name
      t.integer :duration
      t.string :notes

      t.timestamps
    end
  end
end
