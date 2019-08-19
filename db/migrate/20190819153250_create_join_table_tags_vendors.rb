class CreateJoinTableTagsVendors < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tags, :vendors do |t|
      # t.index [:tag_id, :vendor_id]
      # t.index [:vendor_id, :tag_id]
    end
  end
end
