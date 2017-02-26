class RenovatedItems < ActiveRecord::Migration[5.0]
  def change
    change_table :items do |t|
      t.string :employee_name
    end
  end
end
