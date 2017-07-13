require 'complex'

class Eratos
  def search(number)
    baseArray = (2..number).to_a
    primeNumbers = []
    first = baseArray.shift
    primeNumbers.push(first)

    while first<Math.sqrt(number) do
      pickup(first, baseArray)
      first = baseArray.shift
      primeNumbers.push(first)
    end
    primeNumbers.concat(baseArray)

    return primeNumbers.join(", ")
  end

  def pickup(first, baseArray)
    for item in baseArray do
      if(item%first==0)
        baseArray.delete(item)
      end
    end
    return first
  end
end
