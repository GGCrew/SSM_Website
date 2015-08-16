class CreateAdminCommunicationSubTypes < ActiveRecord::Migration
  def change
    create_table :admin_communication_sub_types do |t|
      t.integer :communication_type_id
      t.string :name
      t.integer :position

      t.timestamps null: false
			t.userstamps
    end
  end
end
