class TicketHistory < ActiveRecord::Base
  belongs_to :tickets
  belongs_to :status
  belongs_to :staffs
end

