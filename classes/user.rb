require_relative '../config/db.rb'
require 'digest'

DB.Connect()

class User < ActiveRecord::Base
  has_many :pets, dependent: :destroy

  # Before adding or updating the password
  before_save :hash_password, :if=>:password_changed?



  # Hashing function to store the pwds hashed
  def hash_password
    crypt = Digest::SHA1.new()
    self.password = crypt.hexdigest(self.password)
  end

end

