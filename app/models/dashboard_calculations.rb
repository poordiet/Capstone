class DashboardCalculations
    
    def self.sales_total
        GroomingAppointment.sum(:appt_total)
    end

    def self.grooming_per_day
        GroomingAppointment.count_by_sql("select count(grooming_appointments.id) from grooming_appointments join grooming_appointment_statuses on grooming_appointments.grooming_appointment_status_id=grooming_appointment_statuses.id  where appt_date = CURRENT_DATE AND grooming_appointment_status_id != 3;")
    end

    def self.sales_by_day
        GroomingAppointment.count_by_sql("select sum(appt_total) from grooming_appointments where  appt_date = CURRENT_DATE and grooming_appointment_status_id != 3")
    end

    def self.appointments_for_today
        GroomingAppointment.find_by_sql("select grooming_appointment_statuses.status, grooming_appointments.id, concat(customer_first_name, ' ', customer_last_name) as customer, 
        customer_primary_phone, pet_name, store_name, appt_date, appt_time, appt_total from customers join pets on customers.id=pets.customer_id 
        join grooming_appointments on pets.id = grooming_appointments.pet_id join stores on grooming_appointments.store_id = stores.id 
        join grooming_appointment_statuses on grooming_appointments.grooming_appointment_status_id = grooming_appointment_statuses.id
        where appt_date = CURRENT_DATE AND grooming_appointment_status_id != 3 group by grooming_appointment_statuses.status, grooming_appointments.id,
         store_name, appt_date, appt_time, customer, customer_primary_phone, pet_name, appt_total order by store_name, appt_date, appt_time;")
    end

    def self.cancelled_appointments_for_today
        GroomingAppointment.find_by_sql("select grooming_appointment_statuses.status, grooming_appointments.id, concat(customer_first_name, ' ', customer_last_name) as customer, 
        customer_primary_phone, pet_name, store_name, appt_date, appt_time, appt_total from customers join pets on customers.id=pets.customer_id 
        join grooming_appointments on pets.id = grooming_appointments.pet_id join stores on grooming_appointments.store_id = stores.id 
        join grooming_appointment_statuses on grooming_appointments.grooming_appointment_status_id = grooming_appointment_statuses.id
        where appt_date = CURRENT_DATE AND grooming_appointment_status_id = 3 group by grooming_appointment_statuses.status, grooming_appointments.id,
         store_name, appt_date, appt_time, customer, customer_primary_phone, pet_name, appt_total order by store_name, appt_date, appt_time;")
    end

  end


  
  