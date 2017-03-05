class Frontend::ShopController < ApplicationController
    layout 'shop'

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def order
        @product_name = params[:product]
        @quantity = params[:quantity]
        @contact = Contact.new
    end

    def confirm_order
        contact = Contact.new(contact_params)
        if contact.save
            redirect_to thanks_path
        else
            render 'order'
        end
    end

    def thanks
    end

    private

    def contact_params
        params.require(:contact).permit(:name,:surname, :company , :email , :Telephone,:message)
    end
end
