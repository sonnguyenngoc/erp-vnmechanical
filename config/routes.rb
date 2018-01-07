Erp::Vnmechanical::Engine.routes.draw do
  root to: "frontend/home#index"
  
  get "dich-vu.html" => "frontend/service#listing", as: :service_listing
  get "dich-vu/chi-tiet.html" => "frontend/service#detail", as: :service_detail
  
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
  get "lien-he.html" => "frontend/information#contact_us", as: :contact_us
  
  get "san-pham.html" => "frontend/category#index", as: :product_listing
  get "san-pham/chi-tiet.html" => "frontend/product#detail", as: :product_detail
end