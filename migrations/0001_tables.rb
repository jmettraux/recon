
Sequel.migration do

  up do

    DB.create_table :items do

      primary_key :id, type: Bignum
      String :name
    end
  end

  down do

    DB.drop_table? :items
  end
end

