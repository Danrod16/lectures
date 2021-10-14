require_relative 'patient'
class Room
  class CapacityFullError < Exception; end
  attr_reader :patients
  attr_accessor :id

  def initialize(attr = {})
    @capacity = attr[:capacity] || 0
    @patients = attr[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    begin
      fail Room::CapacityFullError, "Room is full" if full?
      patient.room = self
      @patients << patient
    rescue Room::CapacityFullError
      puts "The room is Full!"
    end
  end
end

room_1 = Room.new(capacity: 2)

patient_1 = Patient.new(name: "Luis", age: 26, disease: "Hemoroides")
patient_2 = Patient.new(name: "Ben", age: 26, disease: "Hemoroides")
patient_3 = Patient.new(name: "Sam", age: 26, disease: "Hemoroides")

# p patient_1
 room_1.add_patient(patient_1)
 room_1.add_patient(patient_2)
 room_1.add_patient(patient_3)
# what is the patient_1 room
puts "patient's room"

puts "Room's patients"
p room_1.patients
