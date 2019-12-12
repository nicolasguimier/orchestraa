class ChangeOchestraCompositionsCompositionToJson < ActiveRecord::Migration[5.2]
  def change
    remove_column :orchestra_compositions, :composition, :string
    add_column :orchestra_compositions, :composition, :jsonb
  end
end
