class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table  :tickets do |t|
        t.integer :section_id, :null => false
        t.string  :solicitante, :null => false
        t.string  :ramal
        t.string  :prioridade, :null => false
    end
  end

  def self.down
    drop_table :tickets
  end
end

