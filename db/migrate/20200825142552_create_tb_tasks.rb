class CreateTbTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tb_tasks do |f|
      f.string :title, comment: 'title'
      f.text :description, comment: 'description'

      f.timestamps
    end
  end
end
