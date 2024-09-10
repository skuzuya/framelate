require_relative '../config/environment'
require 'bcrypt'

def generate_password_hash(password)
  salt = BCrypt::Engine.generate_salt
  crypted_password = Sorcery::CryptoProviders::BCrypt.encrypt(password, salt)
  { crypted_password: crypted_password, salt: salt }
end

password = ARGV[0] || 'default_password'
result = generate_password_hash(password)

puts "crypted_password: #{result[:crypted_password]}"
puts "salt: #{result[:salt]}"
