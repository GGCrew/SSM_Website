class Event < ActiveRecord::Base

	has_many	:admin_notes,	as: :noteable,	class_name: 'Admin::Note'

	#..#

	belongs_to	:event_type
	belongs_to	:booking_status,	class_name: 'Admin::BookingStatus'
	belongs_to	:contract_status,	class_name: 'Admin::ContractStatus'
	belongs_to	:payment_status,	class_name: 'Admin::PaymentStatus'
	belongs_to	:photo_medium,		class_name: 'Admin::PhotoMedium'
	belongs_to	:creator,	class_name: 'User',	foreign_key: :created_by
	belongs_to	:updater,	class_name: 'User',	foreign_key: :updated_by

	#..#

	validates	:event_type_id,	presence: true

	#..#

	scope	:between, lambda {
		|start_date, end_date|
		where([
			'start < :end_date AND end >=:start_date',
			{
				start_date: (start_date - 1.day),
				end_date: (end_date + 1.day)
			}
		]).order(:start, :end, :event_name)
	}

	#..#

	DEFAULTS = {
		event_type_id: EventType::DEFAULT.id,
		booking_status_id: Admin::BookingStatus::DEFAULT.id,
		contract_status_id: Admin::ContractStatus::DEFAULT.id,
		payment_status_id: Admin::PaymentStatus::DEFAULT.id,
		photo_medium_id: Admin::PhotoMedium::DEFAULT.id
	}

	#..#
		
	def title
		return self.event_name unless self.event_name.blank?

		names = [self.bride_first_name, self.groom_first_name]
		names.compact!
		return names.join(' & ') unless names.empty?
	end


end
