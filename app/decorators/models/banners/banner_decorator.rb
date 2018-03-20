Erp::Banners::Banner.class_eval do
  
  # //Thu vien hinh anh - Lay danh sach hinh anh
  def self.get_galleries
    self.get_active.joins(:category).where(erp_banners_categories: {position: Erp::Banners::Category::POSITION_GALLERIES_BANNER})
  end
  
end