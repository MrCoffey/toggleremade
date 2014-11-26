class AddTimeToTags < ActiveRecord::Migration
  def change
    add_column :tags, :time, :time
  end
end
