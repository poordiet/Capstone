class ReportCalculations

    def self.expired_vaccines
        PetVaccination.find_by_sql("select date_expire from pet_vaccinations where date_expire < CURRENT_DATE")
    end

    def self.service_totals
        GroomingService.find_by_sql("select service_id, sum(service_amount) from grooming_services group by service_id order by sum(service_amount) desc")
    end

    def self.sales_by_store
        GroomingAppointment.find_by_sql("select store_id, sum(appt_total) from grooming_appointments group by store_id;")
    end

    def self.date_obtained
        Customer.find_by_sql("select date_obtained from customers")
    end

    def self.customer_sales
        Customer.find_by_sql("select concat( customer_first_name, ' ', customer_last_name) as customer, sum(appt_total) from grooming_appointments inner join pets on pets.id = grooming_appointments.pet_id inner join customers on pets.customer_id = customers.id where customer_status_id = 1 group by customer order by sum desc limit 10")
    end

    def self.customer_appointments
        Customer.find_by_sql("select concat( customer_first_name, ' ', customer_last_name) as customer, count(grooming_appointments.id) from grooming_appointments inner join pets on pets.id = grooming_appointments.pet_id inner join customers on pets.customer_id = customers.id where customer_status_id = 1 group by customer order by count desc limit 10")
    end


end
