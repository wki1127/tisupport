class Item < ActiveRecord::Base
  belongs_to :tickets
  belongs_to :problems
  has_many :items_histories
end

