Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:number",{:controller => "calculations", :action=>"flexible_square"})
  get("/flexible/square_root/:number",{:controller => "calculations", :action=>"flexible_square_rt"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action=>"payment_calc"})


# forms
get("/square/new", {:controller=> "calculations", :action => "square_form"})
get("square/results", {:controller => "calculations", :action=> "square_results"})
get("/square_root/new", {:controller=> "calculations", :action => "square_rt_form"})
get("square_rt/results", {:controller => "calculations", :action=> "square_rt_results"})
get("/payment/new", {:controller=> "calculations", :action=> "payment_form"})
get("/payment/payment/results", {:controller=>"calculations", :action=> "payment_results"})
get("random/new", {:controller=> "calculations", :action => "random_form"})
get("random/random/results",{:controller=>"calculations",:action=>"random_results"})
end
