class CreateSarkarreplies < ActiveRecord::Migration
  def change
    create_table :sarkarreplies do |t|
      t.string :reply

      t.timestamps null: false
    end
  end
end
