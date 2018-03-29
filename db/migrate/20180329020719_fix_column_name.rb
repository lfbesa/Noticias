class FixColumnName < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :news, :titular, :title
    rename_column :news, :bajada, :subtitle
    rename_column :news, :cuerpo, :body
    rename_column :opinions, :usuario, :author
    rename_column :opinions, :cuerpo, :comment
  end

  def self.down
    rename_column :news, :title, :titular
    rename_column :news, :subtitle, :bajada
    rename_column :news, :body, :cuerpo
    rename_column :opinions, :author, :usuario
    rename_column :opinions, :comment, :cuerpo
    # rename back if you need or do something else or do nothing
  end
end
