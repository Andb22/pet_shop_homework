
def pet_shop_name(name)
  return name[:name]
end

def total_cash(cash)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  @pet_shop[:admin][:total_cash] += cash
  return @pet_shop[:admin][:total_cash]
end

def pets_sold(pet_shop)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold_pets)
  @pet_shop[:admin][:pets_sold] += sold_pets
end

def stock_count(pet_shop)
  return @pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  breed_of_pet = []
    for type in pet_shop[:pets]
      if type[:breed] == breed
        breed_of_pet.push(type[:name])
      end
    end
      return breed_of_pet
end

def find_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
      if pet[:name] == name
        return pet
      end
    end
    return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.shift()
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  if customer[:pets] == []
  return 0
  end
return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet) 
end
