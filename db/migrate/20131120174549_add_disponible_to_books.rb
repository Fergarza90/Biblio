class AddDisponibleToBooks < ActiveRecord::Migration
  def change
    add_column :books, :disponible, :string
  end
end
