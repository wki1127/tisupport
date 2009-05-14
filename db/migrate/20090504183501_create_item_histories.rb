class CreateItemHistories < ActiveRecord::Migration
  def self.up
    create_table  :item_histories do |i|
      i.integer :item_id, :null => false
      i.integer :statu_id, :null => false
      i.date    :data, :null => false
      i.time    :hora, :null => false
      i.integer :staff_id, :null => false
    end
  end

  def self.down
    drop_table :item_histories
  end
end

