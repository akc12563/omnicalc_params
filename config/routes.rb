Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:number",{:controller => "calculations", :action=>"flexible_square"})
  get("/flexible/square_rt/:number",{:controller => "calculations", :action=>"flexible_square_rt"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action=>"payment_calc"})


# forms
get("/square/new", {:controller=> "calculations", :action => "square_form"})
get("square/results", {:controller => "calculations", :action=> "square_results"})

end
