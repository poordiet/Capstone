class ReportCalculations

    def self.expired_vaccines
        PetVaccination.find_by_sql("select date_expire from pet_vaccinations where date_expire < CURRENT_DATE")
    end

    def self.service_totals
        GroomingService.find_by_sql("select service_id, sum(service_amount) from grooming_services join grooming_appointments
        on grooming_appointments.id = grooming_services.grooming_appointment_id where grooming_appointment_status_id !=3 group by service_id order by sum(service_amount) desc")
    end

    def self.service_count
        GroomingService.find_by_sql("select service_id, count(service_id) from grooming_services group by service_id order by count(service_id) desc")
    end

    def self.sales_by_store
        GroomingAppointment.find_by_sql("select store_id, sum(appt_total) from grooming_appointments where grooming_appointment_status_id != 3 group by store_id")
    end

    def self.date_obtained
        Customer.find_by_sql("select date_obtained from customers")
    end

    def self.customers_gained_by_month
        Customer.find_by_sql("select  date_trunc('month', date_obtained) as month, count(date_obtained) as customers from customers where date_obtained is not null and customer_status_id = 1 group by month order by month")
    end

    def self.customer_sales
        Customer.find_by_sql("select concat( customer_first_name, ' ', customer_last_name) as customer, customer_primary_phone,
         customer_email, customers.id as customer_id, sum(appt_total) from grooming_appointments
          inner join pets on pets.id = grooming_appointments.pet_id inner join customers on pets.customer_id = customers.id 
          where customer_status_id = 1 and  appt_total is not null and grooming_appointment_status_id != 3  group by customer, customer_primary_phone, customer_email,
           customers.id order by sum desc fetch first 10 rows only")
    end

    def self.customer_appointments
        Customer.find_by_sql("select concat( customer_first_name, ' ', customer_last_name) as customer, 
        customer_primary_phone, customer_email, customers.id as customer_id, count(grooming_appointments.id) 
        from grooming_appointments inner join pets on pets.id = grooming_appointments.pet_id 
        inner join customers on pets.customer_id = customers.id where customer_status_id = 1 and grooming_appointment_status_id !=3 group by customer,
         customer_primary_phone, customer_email, customers.id order by count desc limit 10")
    end

    def self.sales_by_month
        GroomingAppointment.find_by_sql("select date_trunc('month', appt_date) as month, sum(appt_total) as sales
         from grooming_appointments where grooming_appointment_status_id != 3 group by month order by month")
    end

    def self.sales_by_month_by_status
        GroomingAppointment.find_by_sql("select date_trunc('month', appt_date) as month, sum(appt_total) as sales, grooming_appointment_status_id
         from grooming_appointments where grooming_appointment_status_id != 3 group by month, grooming_appointment_status_id order by month")
    end

    def self.inactive_employees
        User.find_by_sql("select users.id, emp_first_name, emp_last_name, emp_primary_phone, users.email, users.roles, status from employees join users on employees.id=users.employee_id join employee_statuses on employees.employee_status_id=employee_statuses.id where
        employee_status_id > 1")
    end

    def self.appointments_for_week
        GroomingAppointment.find_by_sql("select grooming_appointment_statuses.status, grooming_appointments.id, 
            concat(customer_first_name, ' ', customer_last_name) as customer, customer_primary_phone, 
            pet_name, store_name, appt_date, appt_time, appt_total from customers 
            join pets on customers.id=pets.customer_id join grooming_appointments on pets.id = grooming_appointments.pet_id 
            join stores on grooming_appointments.store_id = stores.id
            join grooming_appointment_statuses on grooming_appointments.grooming_appointment_status_id = grooming_appointment_statuses.id
             where (appt_date between CURRENT_DATE AND (CURRENT_DATE + interval '7 day') ) AND grooming_appointment_status_id != 3
             group by grooming_appointment_statuses.status, grooming_appointments.id, store_name, appt_date, appt_time, customer, customer_primary_phone, 
             pet_name, appt_total order by store_name, appt_date, appt_time;")
    end


end
