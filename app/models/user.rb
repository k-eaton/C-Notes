# require 'bcrypt'

class User < ApplicationRecord
  # users.password_hash in the database is a :string
  # include BCrypt

  EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i

  has_secure_password
  validates :username, presence: true
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates_length_of :password, :in => 8..20, :on => :create
  # def password
  #   @password ||= Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password
  # end

  has_many :notebooks
  has_many :pages, through: :notebooks
end
