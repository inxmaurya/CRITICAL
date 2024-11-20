# # ##############################################################################
# # Symmetric Encryption Example in Ruby
# # ----------------------------------------------------------------------------
# require 'openssl'
# require 'securerandom'
#
# # Generate a random symmetric key (32 bytes for AES-256)
# key = SecureRandom.random_bytes(32)
#
# # Initialization vector (IV) - 16 bytes for AES
# iv = SecureRandom.random_bytes(16)
#
# # Data to encrypt
# data = "This is a secret message."
#
# # Create a cipher for encryption
# cipher = OpenSSL::Cipher.new('aes-256-cbc') # AES with 256-bit key and CBC mode
# cipher.encrypt
# cipher.key = key
# cipher.iv = iv
#
# # Encrypt the data
# encrypted = cipher.update(data) + cipher.final
# puts "Encrypted Data: #{encrypted.unpack1('H*')}"
#
#
# #----------------------------------Separation----------------------------------#
#
# # Create a cipher for decryption
# decipher = OpenSSL::Cipher.new('aes-256-cbc')
# decipher.decrypt
# decipher.key = key
# decipher.iv = iv
#
# # Decrypt the data
# decrypted = decipher.update(encrypted) + decipher.final
# puts "Decrypted Data: #{decrypted}"
# # ----------------------------------------------------------------------------
# # Symmetric Encryption Example in Ruby
# # ##############################################################################
