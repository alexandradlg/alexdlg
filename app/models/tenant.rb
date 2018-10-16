# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tenant < ApplicationRecord
  has_many :studios, through: :stays
  validates :email, presence: true
end
