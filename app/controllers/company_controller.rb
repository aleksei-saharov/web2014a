class CompanyController < ApplicationController
  before_action :authenticate_user!

  def index
     @companies=Company.all
    
  end
  def show
    @company=Company.find(params[:id])
  end

  def create
     
  end
  def new
    @company=Company.new(company_params)
    @company.save
    redirect_to company_index_path
  end

  def destroy
    @company=Company.find(params[:id])
    @company.destroy
    redirect_to company_index_path
    
  end
  
  def edit
    @company=Company.find(params[:id])
    
  end
  def update
    @company=Company.find(params[:id])
    if @company.update(company_params)
      redirect_to company_index_path
    end
  end
  private
  def company_params
    params.require(:company).permit(:companyName, :createdBy)
  end
end