class CreateChanners < ActiveRecord::Migration[7.0]
  def change
    create_table :channers do |t|
      t.string :title
      t.references :chan, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
