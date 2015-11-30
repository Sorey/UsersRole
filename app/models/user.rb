class User < ActiveRecord::Base
  validates :login, :email, presence: true
  validates :login, length: { minimum: 2}
  validates :password,  length: { minimum: 6}, on: :create #if :password.blank?
  validates :password, confirmation: true
  validates :login, :email, uniqueness: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i #, on: :create
  #validates :password_confirmation, presence: true

  #validates :password, length: { minimum: 6, message: 'must be have minimum 8 characters.' }
  has_secure_password

  def editor?
    @roles = self.roles
    @roles.each do |r|
      @true = r.name if r.name == 'Editor'
    end
    @true == 'Editor'
  end

  def admin?
    @roles = self.roles
    @roles.each do |r|
      @true = r.name if r.name == 'Admin'
    end
    @true == 'Admin'
  end



  # @roles = self.roles
  # @roles.each do |r|
  #   r.name
  # end

  has_many :uparts
  has_many :roles, through: :uparts, dependent: :destroy
  accepts_nested_attributes_for :uparts
end
