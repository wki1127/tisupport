class Category < ActiveRecord::Base
  validates_presence_of :nome
  has_many :problems
end

