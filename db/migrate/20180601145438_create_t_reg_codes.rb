class CreateTRegCodes < ActiveRecord::Migration
  def change
    create_table(:t_reg_codes, primary_key: 'f_code_id') do |t|
      t.string :f_code
      t.integer :f_user_id
      t.datetime :f_val_date
      t.datetime :f_inval_date
      t.timestamps
    end
  end
end
