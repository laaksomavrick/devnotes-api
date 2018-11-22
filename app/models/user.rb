class User < ApplicationRecord
  has_secure_password

  before_validation {
    self.email = self.email.to_s.downcase
  }

  validates_length_of :password, maximum: 24, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  validates_presence_of :email
  validates_uniqueness_of :email
end
