class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true
      t.string :full_name
      t.string :email
      t.string :status, default: 'pending'
      t.string :sendinblue_email_id
      t.boolean :email_delivered, default: false
      t.boolean :email_read, default: false
      t.boolean :email_error, default: false

      t.timestamps
    end
  end
end
