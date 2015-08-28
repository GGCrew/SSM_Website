class AddInitialUserData < ActiveRecord::Migration

  def up
		User.create!(
			name: 'Randy',
			login: 'randy',
			password:	'Randy1',
			password_confirmation:	'Randy1',
			timezone: 'Pacific Time (US & Canada)'
		)

		# Set userstamp for other migrations that might run during the current "rake db:migrate" task
		User.current_user = User.first
  end

	def down
		User.destroy_all
	end

end
