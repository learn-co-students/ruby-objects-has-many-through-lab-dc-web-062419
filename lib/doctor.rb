require 'pry'

class Doctor

    attr_reader
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
        # binding.pry
        #takes an instance of Patient class and a date creates 
        #a new appointment that knows it belongs to doctor
    end

    def appointments
        Appointment.all.select {|patient| patient.doctor == self}
    end

    def patients
        appointments.collect {|appointment| appointment.patient }
    end


end