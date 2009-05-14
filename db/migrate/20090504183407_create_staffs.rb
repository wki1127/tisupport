class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table  :staffs do |s|
      s.integer :section_id, :null => false
      s.string  :nome, :null => false
      s.string  :senha, :null => false
      s.string  :email, :null => false
      s.string  :telefone, :null => false
    end
  end

  def self.down
    drop_table :staffs
  end
end

