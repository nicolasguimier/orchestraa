class AddEmailClickedToInvitations < ActiveRecord::Migration[5.2]
  def change
    add_column :invitations, :email_clicket, :boolean, default: false
  end
end
