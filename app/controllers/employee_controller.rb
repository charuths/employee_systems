class EmployeeController < ApplicationController
	
	def details
    @employee = Employee.find(params[:id])
    render :json => @employee
	end

  def list

    byebug
    puts  params

  end
end
