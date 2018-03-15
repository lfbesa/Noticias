class RemoveTiempoFromNews < ActiveRecord::Migration[5.1]
  def change
    remove_column :news, :tiempo, :datetime
  end
end
