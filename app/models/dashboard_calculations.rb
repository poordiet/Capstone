class DashboardCalculations
    
    def self.sales_total
        GroomingAppointment.sum(:appt_total)
    end

    def self.grooming_per_day
        GroomingAppointment.group_by_day(:appt_date,format: '%b %Y').count(:appt_date)
    end

  end