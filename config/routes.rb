Rails.application.routes.draw do
  # flexiblw square
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})

  # flexible square root
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root_5"})

  # flexible payment
  get("/flexible/payment/:num_1/:num_2/:num_3", {:controller => "calculations", :action => "flex_payment_num"})
  # flexible random number
  get("/flexible/random/:num_1/:num_2", {:controller => "calculations", :action => "flex_random_num"})






  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})
end
