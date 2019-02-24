require 'openssl'
require 'valid_email2'

class User < ApplicationRecord
  ITERATIONS = 20_000
  DIGEST = OpenSSL::Digest::SHA256.new

  has_many :questions, dependent: :destroy
  has_many :authorized_questions, class_name: 'Question',
           foreign_key: :author_id, dependent: :nullify

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  validates :username, length: { maximum: 40 }
  validates :username, format: { with: /\A[\w]+\z/ }
  validates :email, 'valid_email_2/email': true
  validates :avatar_url, format: { with: URI::regexp(%w(http https)) }, on: :update, allow_blank: true
  validates :bg_color, format: { with: /\A#([0-9a-f]{3}){1,2}\z/i }, on: :update, allow_blank: true

  attr_accessor :password

  before_validation :make_downcase
  before_save :encrypt_password

  validates_presence_of :password, on: :create
  validates_confirmation_of :password

  def encrypt_password
    if password.present?
      self.password_salt = User.hash_to_string(OpenSSL::Random.random_bytes(16))

      self.password_hash = User.hash_to_string(
          OpenSSL::PKCS5.pbkdf2_hmac(
              password, password_salt, ITERATIONS, DIGEST.length, DIGEST
          )
      )
    end
  end

  def self.hash_to_string(password_hash)
    password_hash.unpack('H*')[0]
  end

  def self.authenticate(email, password)
    user = find_by(email: email)

    return nil unless user.present?

    hashed_password = User.hash_to_string(
        OpenSSL::PKCS5.pbkdf2_hmac(
            password, user.password_salt, ITERATIONS, DIGEST.length, DIGEST
        )
    )

    return user if user.password_hash == hashed_password
    nil
  end

  def make_downcase
    self.username = username.downcase unless username.blank?
  end
end
