json.extract! student, :id, :first_name, :middle_name, :last_name, :date_of_birth, :father_name, :join_date, :leaving_date, :mobile, :created_at, :updated_at
json.url student_url(student, format: :json)
