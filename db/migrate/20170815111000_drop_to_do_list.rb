class DropToDoList < ActiveRecord::Migration[5.1]
  def change
    drop_table :to_do_lists
  end
end
