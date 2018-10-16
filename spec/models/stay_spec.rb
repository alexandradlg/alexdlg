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

require 'rails_helper'

RSpec.describe Stay, type: :model do
  before(:each) do
    @tenant = create(:tenant)
    @studio = create(:studio)
    @first_stay = create(:stay, studio_id: @studio.id, tenant_id: @tenant.id)
  end
  it "should create a new stay" do
    second_stay = build(:stay, start_date: Time.zone.today + 16, end_date: Time.zone.today + 36, studio_id: @studio.id, tenant_id: @tenant.id)
    expect(second_stay).to be_valid
  end

  it "shouldn't allow two bookings on the same period" do
    second_stay = build(:stay, studio_id: @studio.id, tenant_id: @tenant.id)
    expect(second_stay).not_to be_valid
  end

  it "shouldn't allow a checkin during a stay" do
    second_stay = build(:stay, start_date: Time.zone.today + 2, studio_id: @studio.id, tenant_id: @tenant.id)
    expect(second_stay).not_to be_valid
  end

  it "shouldn't allow a checkout during a stay" do
    second_stay = build(:stay, end_date: Time.zone.today + 5, studio_id: @studio.id, tenant_id: @tenant.id)
    expect(second_stay).not_to be_valid
  end

  it "shouldn't allow a checkin before a stay and a checkout after a stay" do
    second_stay = build(:stay, start_date: Time.zone.today - 5, end_date: Time.zone.today + 20, studio_id: @studio.id, tenant_id: @tenant.id)
    expect(second_stay).not_to be_valid
  end

  it "shouldn't allow a checkin and a checkout during a stay" do
    second_stay = build(:stay, start_date: Time.zone.today + 2, end_date: Time.zone.today + 10, studio_id: @studio.id, tenant_id: @tenant.id)
    expect(second_stay).not_to be_valid
  end
end
