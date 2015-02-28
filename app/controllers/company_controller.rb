class CompanyController < ApplicationController
  def index
    @companies=Company.all
    
  end

  def create
    
  end

  def destroy
    
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
