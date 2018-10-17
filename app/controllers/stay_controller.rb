require 'rest-client'

class StayController < ApplicationController
  def index
    @stays = Stay.all
  end

  def show
    @stay = Stay.find(params[:id])
    @payments = @stay.payments
  end

  def update_payment_status
    # get and store the generated guid
    @response = RestClient.get 'https://www.uuidgenerator.net/api/guid'
    payment = Payment.find(params[:id])
    payment.update(guid: @response)
    payment.save ? flash[:success] = "Payment validated :)" : flash[:alert] = "Payment invalid"
    redirect_to stay_path(Stay.find(payment.stay.id))
  end
end
