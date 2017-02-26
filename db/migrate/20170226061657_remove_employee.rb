class RemoveEmployee < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :employee_id
    drop_table :employees
  end
end
