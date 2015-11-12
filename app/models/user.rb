class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true
  validates :first_name, :last_name, length: { minimum: 2}
  validates :password,  length: { minimum: 6}, confirmation: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  #validates :password_confirmation, presence: true

  #validates :password, length: { minimum: 6, message: 'must be have minimum 8 characters.' }
  has_secure_password

  has_many :uparts
  has_many :roles, through: :uparts, dependent: :destroy
  accepts_nested_attributes_for :uparts
end
