class CreateToDoLists < ActiveRecord::Migration[5.0]
  def change
    create_table :to_do_lists do |t|
      t.string    :task_name
      t.text      :task_details
      t.timestamps
    end
  end
end
