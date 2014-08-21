class RemoveTableofcontents < ActiveRecord::Migration
  def change
    drop_table :tableofcontents
  end
end
