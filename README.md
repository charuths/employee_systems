Employee System




* Ruby version
  - 2.6.3

* Rails version
  - 6.0.3.2

* Model
  - Employee Addresses
  - Employee Jobs
  - Employees
  - Job Schedules

* Database
  - PostgreSql

* Sample Data
   run rails db:seed

* API
  - http://localhost:3000/employee/details?id={id}
    -Example http://localhost:3000/employee/details?id=1

  -  http://localhost:3000/employee/list?sort={1=NameSortAscending, 2=NameSortDescending, 3=DOBAscending, 4=DOBDescending}&&gender={0=All, 1=Male, 2= Female, 3=others}&&marital_status={0=All, 1=Single, 2= Maried}
   - Example http://localhost:3000/employee/list?sort=1&&gender=0&&marital_status=1