require './lib/doctor'
require './lib/patient'
require './lib/specialty'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => "doctors_office_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM patients *;")
    DB.exec("DELETE FROM doctors *;")
    DB.exec("DELETE FROM specialties *;")
  end
end
