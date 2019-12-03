class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :location
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :notes
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
