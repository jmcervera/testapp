Sequel.migration do
  change do
    create_table(:articles) do
      primary_key :id, unique: true
      String :title, null: false
      TrueClass :published, default: false
    end
  end
end
