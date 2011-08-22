require 'digest/md5'
class User < ActiveRecord::Base
  has_many :posts
  validates :name, :presence => true, :uniqueness => true
  validate :password_must_be_present

  def self.encrypt_password(password)
    Digest::MD5.hexdigest(password)
  end

  def self.authenticate(name, password)
    if user = find_by_name(name)
      if user.hashed_password != encrypt_password(password)
        user = nil
      end
    end
    user
  end

  def password_must_be_present
    errors.add(:password, "Missing password") unless hashed_password.present?
  end
end
