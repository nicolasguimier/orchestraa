class RenameEmailClickedOnInvitations < ActiveRecord::Migration[5.2]
  def change
    rename_column :invitations, :email_clicket, :email_clicked
  end
end
