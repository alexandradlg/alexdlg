class StayController < ApplicationController
  def index
    @stays = Stay.all
  end

  def show
    @stay = Stay.find(params[:id])
    @due_per_month = {}
    (@stay.start_date..@stay.end_date).group_by(&:beginning_of_month).map { |start, month|
      @due_per_month[start.strftime("%b %Y")] = (@stay.studio.price * month.count) / Time.days_in_month(start.month, start.year)
    }
  end
end
