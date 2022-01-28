require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:user) { FactoryBot.build(:user)}
  let(:appointment) { FactoryBot.build(:appointment)}

  describe 'Creating an appointment' do
    context 'with lacking parameters' do
      it 'will return an error if type is not present' do
        appointment = Appointment.new
        appointment.aname = 'Health Certificate'
        appointment.atime = '8:00AM'
        appointment.adate = '01-01-2020'

        expect(appointment).to_not be_valid
        expect(appointment.errors).to be_present
      end

      it 'will return an error if name is not present' do 
        appointment = Appointment.new
        appointment.atype = 'Certification'
        appointment.atime = '8:00AM'
        appointment.adate = '01-01-2020'

        expect(appointment).to_not be_valid
        expect(appointment.errors).to be_present
      end

      it 'will return an error if time is not present' do 
        appointment = Appointment.new
        appointment.aname = 'Health Certificate'
        appointment.atype = 'Certification'
        appointment.adate = '01-01-2020'

        expect(appointment).to_not be_valid
        expect(appointment.errors).to be_present
      end

      it 'will return an error if date is not present' do 
        appointment = Appointment.new
        appointment.aname = 'Health Certificate'
        appointment.atype = 'Certification'
        appointment.atime = '8:00AM'

        expect(appointment).to_not be_valid
        expect(appointment.errors).to be_present
      end
    end

    context 'with complete parameters' do
      it 'will create new record of an appointment' do
        user = User.new
        user.first_name = 'John'
        user.last_name = 'Doe'
        user.middle_name = 'M'
        user.email = 'johndoevalid@email.com'
        user.password = 'johnnypassword'

        appointment = user.appointments.new
        appointment.aname = 'Health Certificate'
        appointment.atype = 'Certification'
        appointment.atime = '8:00AM'
        appointment.adate = '01-01-2020'
        

        expect(appointment).to be_valid
      end
    end
  end
end

describe 'Relationship' do
  context 'with User model' do
    it 'has belongs_to association' do
      appointment = Appointment.reflect_on_association(:user)

      expect(appointment.macro).to eq(:belongs_to)
    end
  end
end
