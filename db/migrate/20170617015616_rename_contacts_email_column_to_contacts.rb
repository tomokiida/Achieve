class RenameContactsEmailColumnToContacts < ActiveRecord::Migration
  def change
    rename_column :contacts, :contacts_email, :email
  end
end
