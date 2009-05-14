class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table  :problems do |p|
        p.string  :nome,  :null => false
        p.integer :category_id, :null => false
        p.integer :section_id, :null => false
    end
  end

  def self.down
    drop_table :problems
  end
end

