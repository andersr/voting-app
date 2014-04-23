class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :title
      t.boolean :top_vote

      t.timestamps
    end
  end
end
