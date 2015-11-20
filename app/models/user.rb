# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(100)
#  password_digest :string(255)
#  name            :string(100)
#  twitter_handle  :string(50)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

	has_secure_password validations: false  #para que quede cifrado ese password.

	validates :email, uniqueness: true, format: /@/
	validates :password, presence: true, on: :create
	validates :password, length: { in: 6..20 }, allow_nil: true  #nil, porque cuando se editando el usuario este dato no va a llegar
	validates :name, presence: true	  # presence: true, significa que debe existir información en ese campo

end
