class Upart < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  # validates_presence_of :user
  # validates_presence_of :role
  #
  # accepts_nested_attributes_for :user
end