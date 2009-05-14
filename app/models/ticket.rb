class Ticket < ActiveRecord::Base
  has_many :items
  has_many :tickets_histories
  belongs_to :sections
end

