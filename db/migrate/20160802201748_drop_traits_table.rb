class DropTraitsTable < ActiveRecord::Migration[5.0]
  def up
  drop_table :traits
end

def down
  raise ActiveRecord::IrreversibleMigration
end
end
