class FormsController < ApplicationController
    def new
        @form = Fulltimeform.new
    end
    def index
        @form = Fulltimeform.where(name: current_user_name)
    end
    def create
        @form = Fulltimeform.new (params.require(:form).permit(:date,:content,:income))
        @form.name = current_user_name
        if @form.save
            redirect_to new_form_url
        else
            render :new
        end
    end
end
