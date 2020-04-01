class DashboardCalculations
    
    def self.sales_total
        GroomingAppointment.sum(:appt_total)
    end

    def self.grooming_per_day
        GroomingAppointment.count_by_sql("select count(id) from grooming_appointments where appt_date = CURRENT_DATE")
    end

    def self.sales_by_day
        GroomingAppointment.count_by_sql("select sum(appt_total) from grooming_appointments where  appt_date = CURRENT_DATE")
    end

    def self.appointments_for_today
        GroomingAppointment.find_by_sql("select concat(customer_first_name, ' ', customer_last_name) as customer, pet_name, appt_date, appt_time, appt_total from customers join pets on customers.id=pets.customer_id join grooming_appointments on pets.id = grooming_appointments.pet_id where appt_date = CURRENT_DATE group by appt_date, appt_time, customer, pet_name, appt_total;")
    end

    

  end


  