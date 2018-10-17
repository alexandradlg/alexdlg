class Payment < ApplicationRecord
  belongs_to :stay
  monetize :price_cents
end
