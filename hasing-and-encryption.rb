# ##############################################################################
# # START Generate a hashed password with an automatic salt
# #-----------------------------------------------------------------------------
# require 'bcrypt'
# password = "mypassword"
# # Generate a hashed password with an automatic salt
# hashed_password = BCrypt::Password.create(password)
# puts "Hashed Password: #{hashed_password}"
# # Validate the password
# if BCrypt::Password.new(hashed_password) == password
#   puts "Password is valid!"
# else
#   puts "Invalid password!"
# end
# ##############################################################################
# # END Generate a hashed password with an automatic salt
# # ----------------------------------------------------------------------------



# ##############################################################################
# # START Generate a hashed password with an Manual salt
# #-----------------------------------------------------------------------------
# require 'bcrypt'
# require 'securerandom'
#
# # User's password
# password = "mypassword"
#
# # Generate a manual salt
# salt = SecureRandom.hex(16)  # 16-byte random salt
#
# # Combine the salt with the password
# salted_password = salt + password
#
# # Generate a hashed password with BCrypt
# hashed_password = BCrypt::Password.create(salted_password)
#
# puts "Salt: #{salt}"
# puts "Hashed Password: #{hashed_password}"
#
# # Store salt and hashed_password securely (e.g., in a database)
# stored_value = "#{salt}$#{hashed_password}"
#
# puts "Stored Value: #{stored_value}"
#
# # ===============================
# # Validating the Password
# # ===============================
#
# # Retrieve the stored salt and hashed password
# retrieved_salt, retrieved_hash = stored_value.split('$')
#
# # Combine the retrieved salt with the input password
# input_password = "mypassword"
# input_salted_password = retrieved_salt + input_password
#
# # Validate the password using BCrypt
# if BCrypt::Password.new(retrieved_hash) == input_salted_password
#   puts "Password is valid!"
# else
#   puts "Invalid password!"
# end

# ##############################################################################
# # END Generate a hashed password with an Manual salt
# # ----------------------------------------------------------------------------
