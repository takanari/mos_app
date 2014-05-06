class AddMoIdToCart < ActiveRecord::Migration
  def change
    add_reference :carts, :mo, index: true
  end
end
