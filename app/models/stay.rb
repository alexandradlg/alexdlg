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
  has_many :payments, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
  after_create :create_waiting_payments

  def create_waiting_payments
    # Creates a waiting payment/month for each booked stay without guid as it is not paid yet
    stay = Stay.last
    (stay.start_date..stay.end_date).group_by(&:beginning_of_month).map { |start, month|
      Payment.create(stay_id: stay.id,
                     tenant_id: stay.tenant_id,
                     price: (stay.studio.price * month.count) / Time.days_in_month(start.month, start.year),
                     month: start.to_date)
    }
  end
end
