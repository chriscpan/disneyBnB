# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

  validates :username, :session_token, :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  after_initialize :ensure_session_token

  has_many(
    :listings,
    class_name: 'Listing',
    foreign_key: :owner_id,
    primary_key: :id
  )

  has_many(
    :reservations,
    class_name: 'Reservation',
    foreign_key: :user_id,
    primary_key: :id
  )

  def self.generate_session_token
    begin
      token = SecureRandom.urlsafe_base64
    end until !self.exists?(:session_token => token)
    token
  end

  def self.find_by_credentials(name, password)
    user = self.find_by_username(name)
    return nil if user.nil?

    if user.is_password?(password)
      user
    end
  end

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

end
