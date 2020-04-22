class User < ApplicationRecord
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password_digest
  has_secure_password
end
