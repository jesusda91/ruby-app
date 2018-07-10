class ContactsController < ApplicationController

    def new
        @contact = Contact.new
    end

    def create
        # render plain: params[:image].inspect
        @contact = Contact.new(contact_params)
        @contact.save
        # if @contact.save
        #     return redirect_to contact_path       
        # end
        # render :new
    end

    private
        def contact_params
        params.require(:contact).permit(:name, :city, :email, :address, :phone, :comment)
        end
end
