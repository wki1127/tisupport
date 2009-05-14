class ItemHistory < ActiveRecord::Base
  belongs_to :items
  belongs_to :status
  belongs_to :staffs
end

