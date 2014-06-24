class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :sprint, index: true
      t.integer :state

      t.timestamps
    end
  end
end
