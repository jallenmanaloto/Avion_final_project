module Api
    module V1
        class AppointmentsController < ApplicationController
            
            def index
                user = User.find(params[:id])
                appointments = user.appointments

                render json: { appointments: appointments }
            end

            def create 
                user = User.find(params[:id])
                appointment = user.appointments.build(appointment_params)

                if appointment.save
                    render json: {appointment: appointment}
                else
                    render json: {error: appointment.errors}
                end
            end

            private

            def appointment_params
                params.permit(:aname, :atype, :adate, :atime)
            end
        end
    end
end