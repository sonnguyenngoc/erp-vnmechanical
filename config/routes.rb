Erp::Vnmechanical::Engine.routes.draw do
  root to: "frontend/home#index"
  
  get "dich-vu.html" => "frontend/service#listing", as: :service_listing
  get "dich-vu/:service_id(/:title).html" => "frontend/service#detail", as: :service_detail
  
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
  get "lien-he.html" => "frontend/information#contact_us", as: :contact_us
  
  get "chuyen-muc(/:menu_id)(/:title).html" => "frontend/product#listing", as: :product_listing
  get "san-pham(/:product_id)(/:title).html" => "frontend/product#detail", as: :product_detail
  
  get "gio-hang.html" => "frontend/shopping#cart", as: :shopping_cart
  get "dat-hang.html" => "frontend/shopping#checkout", as: :shopping_checkout
  get "dat-hang/thanh-cong.html" => "frontend/shopping#finish", as: :shopping_finish
  
  get "tin-tuc.html" => "frontend/blog#listing", as: :blog_listing
  get "tin-tuc/:blog_id(/:title).html" => "frontend/blog#detail", as: :blog_detail
  
  get "tuyen-dung.html" => "frontend/recruitment#listing", as: :recruitment_listing
  get "tuyen-dung/chi-tiet.html" => "frontend/recruitment#detail", as: :recruitment_detail
  
  get "hinh-anh.html" => "frontend/gallery#index", as: :gallery
end