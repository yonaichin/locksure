class CatalogController < ApplicationController
        def index
                @catalog = Catalog.all
        end

        def brochure
          @catalog = Catalog.all
        end
end
