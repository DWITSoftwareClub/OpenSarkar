class CreateReplycomments < ActiveRecord::Migration
  def change
    create_table :replycomments do |t|
      t.string :comment

      t.timestamps null: false
    end
  end
end
