class AddCheckedoutToItem < ActiveRecord::Migration[5.0]
  def change
    change_table :items do |t|
      t.boolean :checked_out
    end
  end
end
