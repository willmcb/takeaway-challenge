require 'takeaway'

describe Takeaway do
  let(:welcome_message) { TestData::welcome_message }
  let(:get_name_message) { TestData::get_name_message }
  let(:get_number_message) { TestData::get_number_message }
  let(:expected_menu_print_output) { TestData::expected_menu_print_output }
  subject(:takeaway) { Takeaway.new }

  it 'accepts command line arguments to pass in twillio credentials' do
    expect(takeaway.inputs).to eq([])
  end

  it 'welcomes customers to the shop' do
    expect{ takeaway.welcome }.to output{ welcome_message }.to_stdout
  end

  it 'can promps customers for their name' do
    allow($stdin).to receive(:gets).and_return('John')
    expect{ takeaway.get_name }.to output{ get_name_message }.to_stdout
  end

  it 'can promps customers for their phone number' do
    allow($stdin).to receive(:gets).and_return('072139481482')
    expect{ takeaway.get_number }.to output{ get_number_message }.to_stdout
  end

  it 'accepts command line arguments to pass in twillio credentials' do

  end

  it 'shows the menu' do
    expect{ takeaway.print_menu }.to output{ expected_menu_print_output }.to_stdout
  end

  it 'prompts users to confirm their order' do

  end
end