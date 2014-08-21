class CreateLessons < ActiveRecord::Migration
  def change

    create_table :tableofcontents do |t|
      t.string :name
      t.timestamps
    end

    create_table :chapters do |t|
      t.string :name
      t.integer :number
      t.belongs_to :tableofcontent
      t.timestamps
    end

    create_table :sections do |t|
      t.string :name
      t.integer :number
      t.belongs_to :chapter
      t.timestamps
    end

    create_table :lessons do |t|
      t.string :name
      t.string :content
      t.integer :number
      t.belongs_to :section
      t.timestamps
    end
 end
end
