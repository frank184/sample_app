class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  # Name Validation
  validates :name, presence: true, length: { maximum: 50 }

  # Email Validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # Password Validation
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password

end
