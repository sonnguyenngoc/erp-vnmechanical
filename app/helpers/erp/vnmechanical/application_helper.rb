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
      
      # article link
      def article_link(article)
        erp_vnmechanical.blog_detail_path(article.id, title:  url_friendly(article.name))
      end
      
      # article link
      def service_link(service)
        erp_vnmechanical.service_detail_path(service.id, title:  url_friendly(service.name))
      end
    end
  end
end
