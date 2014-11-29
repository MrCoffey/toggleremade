class AddTagIdToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :tag_id, :integer
  end
end
