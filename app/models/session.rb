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

class Session < ActiveRecord::Base

  validates :user_id, :token, presence: true
  validates :token, uniqueness: true

  after_initialize :set_user_token
  belongs_to :user

  def set_user_token
    # fail
    self.token ||= SecureRandom.urlsafe_base64(16)
  end
end
