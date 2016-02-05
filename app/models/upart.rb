class Upart < ActiveRecord::Base
  self.table_name =  :uparts
  belongs_to :user
  belongs_to :role
end