class ChangeUserModel < ActiveRecord::Migration
  def up
		add_column	'users',	'name',							:string,	after: 'id'
		add_column	'users',	'login',						:string,	after: 'name'
		add_column	'users',	'password_digest',	:string,	after: 'login'
		add_column	'users',	'timezone',					:string,	after: 'password_digest'
		add_column	'users',	'active',						:boolean,	default: true
    add_column	'users',	'created_by',				:integer
    add_column	'users',	'updated_by',				:integer

		remove_column	'users',	'email'
		remove_column	'users',	'password_hash'
		remove_column	'users',	'password_salt'
  end

	def down
		add_column	'users',	'email',					:string
		add_column	'users',	'password_hash',	:string
		add_column	'users',	'password_salt',	:string

		remove_column	'users',	'name'
		remove_column	'users',	'login'
		remove_column	'users',	'password_digest'
		remove_column	'users',	'timezone'
		remove_column	'users',	'active'
    remove_column	'users',	'created_by'
    remove_column	'users',	'updated_by'
	end
end
