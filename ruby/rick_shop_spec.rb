require 'rspec'
require_relative 'rick_shop'


describe RickShop::Inventory do


  it '.search' do
    guitars = []
    inventory=RickShop::Inventory.new(guitars)
    inventory.add_guitar('V95693', 1499.95, RickShop::GuitarSpec::BUILDER[:fender], 'Stratocastor',
                         RickShop::GuitarSpec::TYPE[:electric], RickShop::GuitarSpec::WOOD[:alder], RickShop::GuitarSpec::WOOD[:alder]
    )

    inventory.add_guitar('V9512', 1549.95, RickShop::GuitarSpec::BUILDER[:fender], 'Stratocastor',
                         RickShop::GuitarSpec::TYPE[:electric], RickShop::GuitarSpec::WOOD[:alder], RickShop::GuitarSpec::WOOD[:alder]
    )

    what_erin_likes = RickShop::GuitarSpec.new(RickShop::GuitarSpec::BUILDER[:fender], 'Stratocastor',
                                               RickShop::GuitarSpec::TYPE[:electric], RickShop::GuitarSpec::WOOD[:alder],
                                               RickShop::GuitarSpec::WOOD[:alder]
    )

    result = inventory.search(what_erin_likes)

    expect(!result.nil?).to be_truthy
    expect(result[0].get_serial_number).to eql('V95693')
    expect(result[1].get_serial_number).to eql('V9512')
  end
end