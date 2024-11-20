# # ##############################################################################
# # Asymmetric Encryption Example in Ruby
# # ----------------------------------------------------------------------------
# Generate RSA Keys
# You need a public/private key pair for encryption and decryption.
require 'openssl'

# Generate RSA key pair
rsa_key = OpenSSL::PKey::RSA.new(2048)

# Export the public and private keys
public_key = rsa_key.public_key
private_key = rsa_key

puts "Public Key:\n#{public_key.to_pem}"
puts "Private Key:\n#{private_key.to_pem}"

# Sample data to encrypt
data = "This is a secret message."

# Encrypt Data
# Encrypt with the public key
encrypted_data = public_key.public_encrypt(data)
puts "Encrypted Data: #{encrypted_data.unpack1('H*')}"


# Decrypt with the private key
decrypted_data = private_key.private_decrypt(encrypted_data)
puts "Decrypted Data: #{decrypted_data}"
# # ----------------------------------------------------------------------------
# # Asymmetric Encryption Example in Ruby
# # ##############################################################################
