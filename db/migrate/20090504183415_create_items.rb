class CreateItems < ActiveRecord::Migration
  def self.up
    create_table  :items do |i|
      i.string  :nome, :null => false
      i.string  :patrimonio
      i.string  :sala
      i.integer :problem_id, :null => false
      i.text    :descricao
      i.integer :ticket_id, :null => false
    end
  end

  def self.down
    drop_table :items
  end
end

