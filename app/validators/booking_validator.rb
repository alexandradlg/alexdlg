class BookingValidator < ActiveModel::Validator
  def validate(record)
    studio = Studio.find(record.studio_id)
    studio.stays.each do |stay|
      record.errors[:start_date] << "Studio unavailable during this period" if record.start_date.between?(stay.start_date, stay.end_date) || record.end_date.between?(stay.start_date, stay.end_date)
      record.errors[:start_date] << "Studio unavailable during this period" if record.start_date < stay.start_date && ( record.end_date > stay.end_date || record.end_date.between?(stay.start_date, stay.end_date))
    end
  end
end
