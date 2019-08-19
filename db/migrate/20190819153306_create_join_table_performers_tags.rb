class CreateJoinTablePerformersTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :performers, :tags do |t|
      # t.index [:performer_id, :tag_id]
      # t.index [:tag_id, :performer_id]
    end
  end
end
