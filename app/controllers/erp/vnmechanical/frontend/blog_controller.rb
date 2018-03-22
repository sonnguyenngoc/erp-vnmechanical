module Erp
  module Vnmechanical
    module Frontend
      class BlogController < Erp::Frontend::FrontendController
        def listing
          @blogs = Erp::Articles::Article.get_all_blogs(params).paginate(:page => params[:page], :per_page => 6)
        end
        
        def detail
          @blog = Erp::Articles::Article.find(params[:blog_id])
          @newest_articles = Erp::Articles::Article.newest_articles(6)
            .where.not(id: @blog.id)
          @meta_keywords = @blog.meta_keywords
          @meta_description = @blog.meta_description
        end
      end
    end
  end
end