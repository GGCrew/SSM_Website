class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string :name
			t.integer :position
      t.boolean :active, default: true

      t.timestamps null: false
			t.userstamps
    end
  end
end
