class CalculationsController < ApplicationController

def flexible_square
  # params = {"number" => "12"} from rails server
  @the_number = params["number"].to_f
  render("calculations/flexible_square.html.erb")
end

def flexible_square_rt
  # params = {"number" => "12"} from rails server
  @the_number1 = params["number"].to_f
  render("calculations/flexible_square_rt.html.erb")
end

def payment_calc
  @int_rt = params["basis_points"].to_f
  @yrs = params["number_of_years"].to_f
  @principle = params["present_value"].to_f

  render("calculations/payment.html.erb")
end

def square_form

render("calculations/square_form.html.erb")
end

def square_results

  @user_number = params["user_number"].to_f
  @square = @user_number ** 2
  render("calculations/square_results.html.erb")
end

end
