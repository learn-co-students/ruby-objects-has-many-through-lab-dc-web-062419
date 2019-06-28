class Doctor
    attr_reader :name
    @@all = []
    def initialize (name)
        @name = name
        @@all << self
        @patients = []
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        created_appointment = Appointment.new(patient, date, self)
    #binding.pry
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        self.appointments.each do |appointment| 
            #binding.pry
            @patients << appointment.patient
            #binding.pry
        end
       # binding.pry
        @patients
    end
end