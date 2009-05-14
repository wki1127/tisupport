class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :nome, :limit => 50
      t.string :ramal, :limit => 10
      t.string :bloco, :limit => 20
      t.string :andar, :limit => 20

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end

