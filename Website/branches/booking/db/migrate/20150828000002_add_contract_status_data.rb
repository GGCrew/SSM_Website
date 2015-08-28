class AddContractStatusData < ActiveRecord::Migration

  def up
		Admin::ContractStatus.create!(name: 'Required')
		Admin::ContractStatus.create!(name: 'Generated (not sent)')
		Admin::ContractStatus.create!(name: 'Sent')
		Admin::ContractStatus.create!(name: 'Needs Revision')
		Admin::ContractStatus.create!(name: 'Received')

		Event.where(contract_status_id: nil).update_all(contract_status_id: Admin::ContractStatus.first.id)
  end

	def down
		Admin::ContractStatus.destroy_all
	end

end
