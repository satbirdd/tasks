class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :title
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
