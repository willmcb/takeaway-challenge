require 'takeaway'

describe Takeaway do
  let(:welcome_message) { TestData::welcome_message }
  let(:get_name_message) { TestData::get_name_message }
  let(:get_number_message) { TestData::get_number_message }
  let(:expected_menu_print_output) { TestData::expected_menu_print_output }
  subject(:takeaway) { Takeaway.new }

  it 'accepts command line arguments to pass in twillio credentials' do

  end

  it 'prompts users to confirm their order' do

  end
end
