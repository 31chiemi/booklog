class RemoveTitleFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :title, :string
  end
end
