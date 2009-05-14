class Problem < ActiveRecord::Base
  belongs_to :categories
  has_many :items
end

