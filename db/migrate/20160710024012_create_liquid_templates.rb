class CreateLiquidTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :liquid_templates do |t|
      t.text :content

      t.timestamps
    end
  end
end
