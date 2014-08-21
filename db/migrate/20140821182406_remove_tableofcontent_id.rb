class RemoveTableofcontentId < ActiveRecord::Migration
  def change
    remove_column :chapters, :tableofcontent_id
  end
end
