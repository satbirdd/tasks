class CreateTaskItems < ActiveRecord::Migration
  def change
    create_table :task_items do |t|
      t.string :title
      t.decimal :plan_time, precision: 10, scale: 2
      t.decimal :time, precision: 10, scale: 2
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
