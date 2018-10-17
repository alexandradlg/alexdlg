class Payment < ApplicationRecord
  belongs_to :stay
  belongs_to :tenant
  monetize :price_cents
end
