class CreateAdminCommunicationTypes < ActiveRecord::Migration
  def change
    create_table :admin_communication_types do |t|
			t.name :string

      t.timestamps null: false
			t.userstamps
    end
  end
end
