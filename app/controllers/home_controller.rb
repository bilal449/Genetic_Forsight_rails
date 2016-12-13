class HomeController < ApplicationController
  
  def index
  end

  def product
  end

  def science
  end

  def faq
  end

  def careers
  end

  def preorderform
    @preorder = Preorder.new
  end

  def preorderform_post
    @preorder = Preorder.new(preorder_params)

    if @preorder.save
      flash[:success] = "Order saved Successfully."
      redirect_to action: :index
    else
      flash[:danger] = "The order cannot be processed. * Fill all the Fields. * Enter a valid Email Address."
      redirect_to action: :preorderform
    end
  end

  private

  def preorder_params
     params.require(:preorder).permit(:full_name, :age, :email_address, :phone_number, :city, :country, :primary_care_physician_name, :how_did_you_hear_about_this_test )
  end

end
