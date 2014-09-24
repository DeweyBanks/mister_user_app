Sequel.migration do
  up do
    create_table(:users) do
      String :email
      String :name
      String :gender
      String :picture
      integer :dob
      String :phone
      String :location
      String :password
    end
  end

  # the undo
  down do
    drop_table(:users)
  end
end

