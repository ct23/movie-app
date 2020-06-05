class ChangeEnglishToBooleanInMovie < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :english, 'boolean USING CAST(english AS boolean)'
    change_column :movies, :english, :boolean, default: true
  end
end
