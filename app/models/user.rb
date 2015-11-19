class User < ActiveRecord::Base

	has_secure_password validations: false  #para que quede cifrado ese password.
end