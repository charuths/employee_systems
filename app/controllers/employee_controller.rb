class EmployeeController < ApplicationController
	
	def details
    @employee = Employee.find(params[:id])
    render json: @employee, status: :ok
	end

  def list
    @employees = Employee.all
    sort_query = sort_query(params[:sort])
    gender_query = gender_query(params[:gender])
    marital_query = marital_query(params[:marital_status])

    Employee.where(gender_query).where(marital_query).order(sort_query)
    render json: @employees, status: :ok
  end


  def sort_query(sort)
    case sort
    when 1 then "name asc"
    when 2 then "name desc"
    when 3 then "date_of_birth asc"
    when 4 then "date_of_birth desc"
    else ""
    end
  end

  def gender_query(gender)
    case gender
    when 1 then {gender: "male"}
    when 2 then {gender: "female"}
    when 3 then {gender: "others"}
    else {}
    end
  end

  def marital_query(status)
    case status
    when 1 then {marital_status: "single"}
    when 2 then {marital_status: "married"}
    else {}
    end
  end
end
