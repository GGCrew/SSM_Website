class AddInitialUserData < ActiveRecord::Migration

  def up
		User.create!(
			name: 'Randy',
			login: 'randy',
			password:	'Randy1',
			password_confirmation:	'Randy1'
		)

		# Set userstamp for other migrations that might run during this "rake db:migrate"
		User.current_user = User.first
  end

	def down
		User.destroy_all
	end

end
