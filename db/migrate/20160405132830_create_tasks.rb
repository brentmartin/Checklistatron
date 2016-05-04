class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :completion
      t.string :description
      t.integer :position

      t.timestamps null: false
    end
  end
end
