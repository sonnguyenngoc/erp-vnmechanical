Erp::Products::Product.class_eval do
  def get_related_products
    Erp::Products::Product.get_active.where(category_id: self.category_id).where.not(id: self.id)
  end
end