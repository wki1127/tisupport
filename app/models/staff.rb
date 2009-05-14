class Staff < ActiveRecord::Base
  belongs_to :sections
  has_many :items_histories
  has_many :tickets_histories
end

