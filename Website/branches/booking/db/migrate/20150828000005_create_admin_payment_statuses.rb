class CreateAdminPaymentStatuses < ActiveRecord::Migration
  def change
    create_table :admin_payment_statuses do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
			t.userstamps
    end
  end
end
