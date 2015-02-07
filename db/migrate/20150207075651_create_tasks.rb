class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.text :notes
      t.datetime :deadline
      t.string :category
      t.boolean :completed
      t.datetime :date_completed
      t.integer :priority
      t.integer :doer_id

      t.timestamps null: false
    end
  end
end
