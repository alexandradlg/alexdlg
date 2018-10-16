# == Schema Information
#
# Table name: stays
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  tenant_id  :integer
#  studio_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stay < ApplicationRecord
  include ActiveModel::Validations
  validates_with BookingValidator
  belongs_to :studio
  belongs_to :tenant
  validates :start_date, presence: true
  validates :end_date, presence: true
end
