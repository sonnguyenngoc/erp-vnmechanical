module Erp
  module Vnmechanical
    module ApplicationHelper
      # menu link helper
      def menu_link(menu)
        erp_vnmechanical.product_listing_path(menu_id: menu.id, title: url_friendly(menu.name))
      end
      
      # product link helper
      def product_link(product)
        erp_vnmechanical.product_detail_path(product_id: product.id, title: url_friendly(product.name))
      end
    end
  end
end
