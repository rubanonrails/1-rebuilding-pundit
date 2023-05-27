class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title,  null: false
      t.string :status, null: false, default: "draft"

      t.timestamps
    end
  end
end
