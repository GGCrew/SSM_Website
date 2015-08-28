class CreateAdminContractStatuses < ActiveRecord::Migration
  def change
    create_table :admin_contract_statuses do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
