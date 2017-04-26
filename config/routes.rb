Rails.application.routes.draw do
  # flexiblw square
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})

  # flexible square root
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root_5"})

  # flexible payment
  get("/flexible/payment/:num_1/:num_2/:num_3", {:controller => "calculations", :action => "flex_payment_num"})

  # flexible random number
  get("/flexible/random/:num_1/:num_2", {:controller => "calculations", :action => "flex_random_num"})

  # flexible square with form
  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})

  # flexible square root with form
  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root"})

  # flexible payment with form
  get("/payment/new", {:controller => "calculations", :action => "payment_form"})
  get("/payment/results", {:controller => "calculations", :action => "payment"})

  # flexible random number with form
  get("/random/new", {:controller => "calculations", :action => "random_form"})
  get("/random/results", {:controller => "calculations", :action => "random"})
end
