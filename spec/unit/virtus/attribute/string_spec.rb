require 'spec_helper'

describe Virtus::Attribute::String do
  it_should_behave_like 'Attribute' do
    let(:attribute_name)        { :email }
    let(:attribute_value)       { 'red john' }
    let(:attribute_value_other) { :'red john' }
  end

  describe '#coerce' do
    let(:attribute)      { described_class.new(:name) }
    let(:value)          { 1 }
    let(:coerce_value) { '1' }

    subject { attribute.coerce(value) }

    it { should eql(coerce_value) }
  end
end
