require_relative 'patient'
class PatientsRepository

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 1
    load
  end

  def add(patient)
    patient.id = @next_id
    @next_id += 1
    @patients << patient
    save_to_csv
  end

  # def save_to_csv

  # end

  def load
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      @patients << Patient.new(row)
    end
    if @patients.empty?
      @next_id = 1
    else
      @next_id = @patients.last.id + 1
    end
  end
end

