class CreateSubmissioms < ActiveRecord::Migration
  def change
    create_table :submissioms do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
