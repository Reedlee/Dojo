module RickShop
  class Guitar
    def initialize(serial_number, price, spec)
      @serial_number = serial_number
      @price = price
      @spec = spec
    end

    def get_serial_number
      @serial_number
    end

    def get_price
      @price
    end

    def set_price(new_price)
      @price = new_price
    end

    def get_spec
      @spec
    end

  end

  class GuitarSpec

    BUILDER = {
        fender: 'fender',
        martin: 'martin',
        gibson: 'gibson',
        collins: 'collins',
        olson: 'olson',
        ryan: 'ryan',
        prs: 'prs',
        any: 'any'
    }

    TYPE = {
        acoustic: 'acoustic',
        electric: 'electric'
    }

    WOOD = {
        alder: 'alder'
    }

    def initialize(builder, model, type, back_wood, top_wood, num_strings)
      @builder = validate(builder, BUILDER)
      @model = model
      @type = validate(type, TYPE)
      @back_wood = validate(back_wood, WOOD)
      @top_wood = validate(top_wood, WOOD)
      @num_strings = num_strings
    end

    def validate(value, rule)
      rule.fetch(value.to_sym)
    end

    def get_builder
      @builder
    end

    def get_model
      @model
    end

    def get_type
      @type
    end

    def get_back_wood
      @back_wood
    end

    def get_top_wood
      @top_wood
    end

    def get_num_strings
      @num_strings
    end
  end

  class Inventory
    def initialize guitars
      @guitars = guitars
    end

    def add_guitar(serial_number, price, builder, model, type, back_wood, top_wood, num_strings)
      spec = GuitarSpec.new(builder, model, type, back_wood, top_wood, num_strings)
      guitar = Guitar.new(serial_number, price, spec)
      @guitars.push(guitar)
    end

    def get_guitar(serial_number)
      @guitars.map {|g| g if serial_number == g.get_serial_number}
    end

    def search(search_spec)
      matching_guitars = []
      @guitars.each do |guitar|
        guitar_spec = guitar.get_spec
        builder = search_spec.get_builder
        next if builder != guitar_spec.get_builder
        model = search_spec.get_model.downcase
        next if model != guitar_spec.get_model.downcase
        type = search_spec.get_type
        next if type != guitar_spec.get_type
        back_wood = search_spec.get_back_wood
        next if back_wood != guitar_spec.get_back_wood
        top_wood = search_spec.get_top_wood
        next if top_wood != guitar_spec.get_top_wood
        num_strings = search_spec.get_num_strings
        next if num_strings != guitar_spec.get_num_strings
        matching_guitars.push guitar
      end
      return matching_guitars
    end
  end

end
