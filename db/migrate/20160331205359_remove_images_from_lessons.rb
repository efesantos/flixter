class RemoveImagesFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :image, :string
  end
end
