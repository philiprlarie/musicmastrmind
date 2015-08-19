# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :email, :username, :password_digest, :session_token, presence: true
  validates :email, :username, :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  after_initialize :ensure_session_token
  attr_reader :password

  has_many :created_songs,
    class_name: :Song,
    foreign_key: :creator_id

  has_many :interpretations,
    foreign_key: :creator_id

  # TODO add relations when more database tables are added

  # has_many :song_comments
  # has_many :line_comments

  # TODO make this work. will need a database column for this data
  def is_moderator?
    return false
  end





  def self.find_by_credentials(username_email, password)
    user_by_username = User.find_by(username: username_email)
    if user_by_username && user_by_username.is_password?(password)
      return user_by_username
    end

    user_by_email = User.find_by(email: username_email)
    if user_by_email && user_by_email.is_password?(password)
      return user_by_email
    end

    return nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end

  def set_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
