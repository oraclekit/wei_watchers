class Account < ActiveRecord::Base

  validates :address, format: /\A0x[0-9a-f]{40}\z/
  validates :balance, numericality: { greater_than_or_equal_to: 0, only_integer: true }

end