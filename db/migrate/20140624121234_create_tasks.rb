class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :sprint, index: true
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
