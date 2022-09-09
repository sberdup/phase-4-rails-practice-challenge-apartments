class ApartmentsController < ApplicationController
    def index 
        render json:Apartment.all
    end

    def show 
        render json:Apartment.find(params[:id])
    end

    def create 
        render json:Apartment.create!(number:params[:number]), status: :created
    end

    def update 
        apartment = Apartment.find(params[:id])
        apartment.update!(number:params[:number])
        render json:apartment, status: :accepted
    end

    def destroy 
        Apartment.find(params[:id]).destroy
        head :no_content
    end
end
