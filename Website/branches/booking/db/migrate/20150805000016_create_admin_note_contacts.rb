class CreateAdminNoteContacts < ActiveRecord::Migration
  def change
    create_table :admin_note_contacts do |t|
      t.integer :admin_note_id
      t.integer :contact_id

      t.timestamps null: false
			t.userstamps
    end
  end
end
