class CompaniesController < ApplicationController
    def new
        @company = Company.new
    end
    
    def create
        @company = Company.create(params[:company])
        if (@company.save)
            flash[:success] = "Created company!"
            redirect_to show_company_path(@company)
        else
            render :new
        end
    end
end
