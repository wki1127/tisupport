class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table  :statuses do |s|
      s.string  :status, :null => false
    end
  end

  def self.down
    drop_table :statuses
  end
end

