class SalesPersonsController < ApplicationController
  def new
    @salesperson = SalesPerson.new
  end

  def create
    @salesperson = SalesPerson.new(salesperson_params)
    if @salesperson.save
      flash[:success] = "SalesPerson added."
      redirect_to salespersons_path
    else
      flash[:alert] = @salesperson.errors.full_messages.join(".  ")
      render :new
    end
  end

  private

  def salesperson_params
    params.require(:salesperson).permit(:name, :age)  
  end
end
