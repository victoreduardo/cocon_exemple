class CreateTableTbItems < ActiveRecord::Migration[5.2]
  def change
    create_table :tb_items do |f|
      f.references :tb_tasks
      f.string :title, comment: 'Item title'

      f.timestamps
    end
  end
end
