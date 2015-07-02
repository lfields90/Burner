class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      flash[:success] = "Phone added."
      redirect_to phones_path
    else
      flash[:alert] = @phone.errors.full_messages.join(".  ")
      render :new
    end
  end

  def show
    @phone = Phone.find(params[:id])
    @manufacturer = @phone.manufacturer
    @alt_desc = "None given"
  end

  private

  def phone_params
    params.require(:phone).permit(:name, :manufacturer_id, :year, :battery_life, :description)
  end
end
