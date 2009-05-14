class Section < ActiveRecord::Base
  validates_presence_of :nome, :ramal, :bloco, :andar
  has_many :staffs
  has_many :tickets
end

