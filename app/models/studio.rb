class Studio < ApplicationRecord
    has_many :tenants, through: :stays
    monetize :price_cents
end
