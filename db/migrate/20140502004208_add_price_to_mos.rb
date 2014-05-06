class AddPriceToMos < ActiveRecord::Migration
  def change
    add_column :mos, :price, :integer
  end
end
