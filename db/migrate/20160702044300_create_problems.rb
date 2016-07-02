class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :Title
      t.string :Description

      t.timestamps null: false
    end
  end
end
