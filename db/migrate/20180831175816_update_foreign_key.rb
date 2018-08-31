class UpdateForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :technologies, :portfolios
    add_foreign_key :technologies, :portfolios, on_delete: :cascade
  end
end
