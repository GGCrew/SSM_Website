class AddPaymentStatusData < ActiveRecord::Migration

  def up
		Admin::PaymentStatus.create!(name: 'Required')
		Admin::PaymentStatus.create!(name: 'Deposit Paid')
		Admin::PaymentStatus.create!(name: 'Fully Paid')
		Admin::PaymentStatus.create!(name: 'Refund Required')
		Admin::PaymentStatus.create!(name: 'Refunded')
		Admin::PaymentStatus.create!(name: 'Wedgewood')

		Event.where(payment_status_id: nil).update_all(payment_status_id: Admin::PaymentStatus.first.id)
  end

	def down
		PaymentStatus.destroy_all
	end

end
