class CreateTicketHistories < ActiveRecord::Migration
  def self.up
    create_table  :ticket_histories do |t|
      t.integer :ticket_id, :null => false
      t.integer :statu_id, :null => false
      t.date    :data, :null => false
      t.time    :hora, :null => false
      t.integer :staff_id, :null => false
    end
  end

  def self.down
    drop_table :ticket_histories
  end
end

