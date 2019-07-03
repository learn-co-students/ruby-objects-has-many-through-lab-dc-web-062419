class Patient

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select { |appts| appts.patient == self }
    end

    def doctors
        self.appointments.map { |appts| appts.doctor }
    end

end
