class AddMemoToMos < ActiveRecord::Migration
  def change
    add_column :mos, :memo, :text
  end
end
