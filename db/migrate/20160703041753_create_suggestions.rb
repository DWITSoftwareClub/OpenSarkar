class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
