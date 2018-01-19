Erp::Articles::Category.class_eval do
  # class const
  ALIAS_SERVICE = 'service'
  ALIAS_RECRUITMENT = 'recruitment'
  
  # get alias for contact
  def self.get_alias_options()
    [
      {text: I18n.t('blog'),value: self::ALIAS_BLOG},
      {text: I18n.t('service'),value: self::ALIAS_SERVICE},
      {text: I18n.t('recruitment'),value: self::ALIAS_RECRUITMENT}
    ]
  end
end