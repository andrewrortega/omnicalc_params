class CalculationsController < ApplicationController
  # flexible square
  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number**2
    render("calculations/flex_square_5.html.erb")
  end
  # flexible square root
  def flex_square_root_5
    @user_number = params["num"].to_f
    @square_root = @user_number**0.5
    @square_root_final = @square_root.round(2)
    render("calculations/flex_square_root_5.html.erb")
  end
  # flexible payment
  def flex_payment_num
    @interest_rate = params["num_1"].to_f / 10000 / 12
    @term = params["num_2"].to_f * -1 * 12
    @principal = params["num_3"].to_f
    @monthly_payment_numerator = @principal * @interest_rate
    @monthly_payment_denominator = 1 - (1 + @interest_rate)**@term
    @monthly_payment = @monthly_payment_numerator / @monthly_payment_denominator
    @monthly_payment_final = @monthly_payment.round(2)
    render("calculations/flex_payment_num.html.erb")
  end
  # random number
  def flex_random_num
    @low_num = params["num_1"].to_f.round(0)
    @high_num = params["num_2"].to_f.round(0)
    @random_number = rand(@low_num..@high_num)
    @random_number_final = @random_number.round(0)
    render("calculations/random_num.html.erb")
  end

  # flexible square with form
  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_number=params[:user_number].to_f
    @square = @user_number**2
    render("calculations/square.html.erb")
  end

end




























# def flex_square_root_num
#   @user_number = params["num"].to_f
#   @square_root = @user_number**0.5
#   render("calculations/flex_square_root_5.html.erb")
# end
