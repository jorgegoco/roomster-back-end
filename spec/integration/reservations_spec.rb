require 'swagger_helper'

describe 'Reservations API' do

  path '/api/v1/reservations' do

    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json', 'application/xml'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          start_date: { type: :date },
          end_date: { type: :date },
          room_id: { type: :integer }
        },
        required: [ 'start_date', 'end_date', 'room_id' ]
      }

      response '201', 'reservation created' do
        let(:reservation) { { start_date: '01/01/2023', end_date: '05/01/2023', room_id: 1 } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:reservation) { { start_date: '01/01/2023' } }
        run_test!
      end
    end
  end
end