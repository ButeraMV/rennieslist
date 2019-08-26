class CreateJoinTableJobsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :jobs, :tags do |t|
      t.index [:job_id, :tag_id]
    end
  end
end
