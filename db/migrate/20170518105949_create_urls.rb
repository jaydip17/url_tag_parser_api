class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :url
      t.string :tag_name
      t.string :tag_content

      t.timestamps
    end
  end
end
