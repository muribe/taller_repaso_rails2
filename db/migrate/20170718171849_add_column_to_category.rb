class AddColumnToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :descuento, :integer, default: 0
  end
end
