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
  @int_rt_adj = @int_rt/120000
  @yrs_adj = @yrs *12
  @int_rt_div = (@int_rt/100).round(2)

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

def square_rt_form
render ("calculations/square_rt_form.html.erb")

end

def square_rt_results
  @the_number1 = params["user_number"].to_f
  @square_rt = @the_number1 ** 0.5
  render ("calculations/square_rt_results.html.erb")
end
def payment_form
  render("calculations/payment_form.html.erb")
end

def payment_results
 @yrs =params["user_years"].to_f
 @principle = params["user_pv"].to_f
 @int_rt = params["user_apr"].to_f
 @int_rt_adj= @int_rt/1200
 @yrs_adj = @yrs *12
 @int_rt_div = (@int_rt/100).round(2)
 render("calculations/payment_results.html.erb")
end
def random_form
render("calculations/random_form.html.erb")
end

def random_results
@max = params["user_max"].to_f
@min = params["user_min"].to_f

render("calculations/random_results.html.erb")
end
end
