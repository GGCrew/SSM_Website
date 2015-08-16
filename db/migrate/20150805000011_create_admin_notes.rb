class CreateAdminNotes < ActiveRecord::Migration
  def change
    create_table :admin_notes do |t|
      t.references :noteable, polymorphic: true, index: true
      t.text :note
			t.integer :communication_type_id

      t.timestamps null: false
			t.userstamps
    end
  end
end
