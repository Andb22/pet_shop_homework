
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


# def pets_by_breed(pet_shop, breed)
#   breed_of_pet = []
#     for
#     end
# end
