class DashboardCalculations
    
    def self.sales_total
        GroomingAppointment.sum(:appt_total)
    end

    def self.grooming_per_day
        GroomingAppointment.count_by_sql("select count(id) from grooming_appointments where date_trunc('day', appt_date) = date_trunc('day', CURRENT_DATE)")
    end

    def self.sales_by_day
        GroomingAppointment.count_by_sql("select sum(appt_total) from grooming_appointments where date_trunc('day', appt_date) = date_trunc('day', CURRENT_DATE)")
    end

     


  end


  