class RemoveContentFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :content, :text
  end
end
