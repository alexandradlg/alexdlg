# == Schema Information
#
# Table name: studios
#
#  id             :integer          not null, primary key
#  name           :string
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("EUR"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Studio < ApplicationRecord
  has_many :tenants, through: :stays
  has_many :stays
  monetize :price_cents

  validates :name, presence: true,
                   uniqueness: true
  validates :price, presence: true
end
