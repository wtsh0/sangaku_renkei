class TUser < ActiveRecord::Base
  # validation
  validates :f_lastname, presence: true
  validates :f_firstname, presence: true
  validates :f_birthday, presence: true
  validates :f_mail, presence: true
  validates :f_country_id, presence: true
  validates :f_language_id, presence: true
  validates :f_login_flg, presence: true
  validates :f_sex, presence: true
  validates :f_auth_flg, presence: true

  #relation
  has_many :t_reg_codes
end
