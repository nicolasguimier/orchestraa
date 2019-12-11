class AddDefaultStatusToInvitations < ActiveRecord::Migration[5.2]
  def change
    change_column_default :invitations, :status, 'draft'
  end
end
