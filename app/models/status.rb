class Status < ActiveRecord::Base
  validates_presence_of :nome
  has_many :tickets_histories
  has_many :items_histories
end

