class CreateTUsers < ActiveRecord::Migration
  def change
    create_table(:t_users, primary_key: 'f_user_id') do |t|
      t.string   :f_lastname
      t.string   :f_firstname
      t.datetime :f_birthday
      t.string   :f_mail
      t.integer  :f_country_id
      t.integer  :f_language_id
      t.integer  :f_login_flg
      t.string   :f_sex
      t.integer  :f_auth_flg
      t.string  :f_comment
      t.timestamps
    end
  end
end
