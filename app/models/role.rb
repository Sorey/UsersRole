class Role < ActiveRecord::Base
  has_many :uparts
  has_many :users, through: :uparts, dependent: :destroy
end
