json.extract! loan, :id, :booking_id, :loan_date, :return_at, :returned_at, :created_at, :updated_at
json.url loan_url(loan, format: :json)
