class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to root_path, notice: "Created"
    else
      flash[:error] = "Wrong email format"
      render :new
    end
  end

  private
  def email_params
    params.require(:email).permit(:address)
  end
end
