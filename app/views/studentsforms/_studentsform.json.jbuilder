json.extract! studentsform, :id, :firstname, :lastname, :age, :regno, :created_at, :updated_at
json.url studentsform_url(studentsform, format: :json)
