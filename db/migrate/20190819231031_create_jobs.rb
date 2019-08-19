class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :position
      t.text :description
      t.references :vendor, foreign_key: true
      t.references :performer, foreign_key: true

      t.timestamps
    end
  end
end
