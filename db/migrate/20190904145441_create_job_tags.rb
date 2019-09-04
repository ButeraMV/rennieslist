class CreateJobTags < ActiveRecord::Migration[5.2]
  def change
    create_table :job_tags do |t|
      t.integer :job_id, foreign_key: true
      t.integer :tag_id, foreign_key: true

      t.timestamps
    end
  end
end
