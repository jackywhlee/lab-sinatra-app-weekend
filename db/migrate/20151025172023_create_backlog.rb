class CreateBacklog < ActiveRecord::Migration
  def change
    create_table :tvshows do |t|
      t.string :title
      t.string :status
      t.integer :priority

      t.timestamps
    end
  end
end
