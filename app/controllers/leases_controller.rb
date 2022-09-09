class LeasesController < ApplicationController
    def create 
        render json:Lease.create!(lease_params), status: :created
    end

    def destroy 
        Lease.find(params[:id]).destroy
        head :no_content
    end

    private

    def lease_params
        params.permit(:rent, :tenant_id, :apartment_id)
    end
end
