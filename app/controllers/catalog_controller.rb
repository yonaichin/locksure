class CatalogController < ApplicationController
        def index
                @catalog = Catalog.all
        end
end
