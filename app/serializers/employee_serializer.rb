class EmployeeSerializer < ActiveModel::Serializers
  include FastJsonapi::ObjectSerializer
  attributes :name, :date_of_birth, :gender, :marital_status
end
