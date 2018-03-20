Erp::Banners::Category.class_eval do
  
  POSITION_GALLERIES_BANNER = 'galleries_page'
  
  def self.get_position_options()
    [
      {text: 'home_slideshow',value: self::POSITION_HOME_SLIDESHOW},
      {text: 'galleries_page',value: self::POSITION_GALLERIES_BANNER}
    ]
  end
  
  def self.get_categories_for_galleries_page
    self.get_active.where(position: Erp::Banners::Category::POSITION_GALLERIES_BANNER)
  end
end