class ChangeEmailErrorOnInvitations < ActiveRecord::Migration[5.2]
  def change
    rename_column :invitations, :email_error, :email_bounce
  end
end
