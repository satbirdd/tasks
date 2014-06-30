class AddIdeaToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :idea, :text
  end
end
