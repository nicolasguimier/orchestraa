class CreateOrchestraCompositions < ActiveRecord::Migration[5.2]
  def change
    create_table :orchestra_compositions do |t|
      t.string :name
      t.string :composition
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
