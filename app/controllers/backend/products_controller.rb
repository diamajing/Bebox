class Backend::ProductsController < BackendController
    def index
        @products = Product.order(created_at: :desc)
    end

    def new
        @product = Product.new 
    end 

    def create
        product = Product.new(product_params)
        if product.save
            redirect_to  backend_products_path ,notice: "Produit Ajouter"
        else
            redirect_to new_backend_product_path, alert: "Une erreur s'est produite veuillez reessayer"
        end 
    end

    private

    def product_params
      params.require(:product).permit(:name, :description, :price, :image)
    end
end
