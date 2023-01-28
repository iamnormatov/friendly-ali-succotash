class CreateProfers < ActiveRecord::Migration[7.0]
  def change
    create_table :profers do |t|
      t.text :des
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
