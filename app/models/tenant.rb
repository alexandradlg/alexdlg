class Tenant < ApplicationRecord
    has_many :studios, through: :stays
end
