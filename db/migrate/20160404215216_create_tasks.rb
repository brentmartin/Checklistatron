class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.sting :description
      t.boolean :completion
      t.integer :position
    end
  end
end
