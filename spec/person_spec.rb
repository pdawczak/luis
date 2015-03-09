require "spec_helper"
require_relative "../lib/person"

RSpec.describe Person do
  let(:luis) { Person.new("Luis", 27) }
  subject { luis }

  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :age  }
  it { is_expected.to respond_to :age= }

  describe "#say_hello_to" do
    it "properly greets another person" do
      pawel = Person.new("Pawel", 28)

      expect(luis.say_hello_to(pawel)).to eq "Luis: Hello Pawel!"
    end
  end

  describe "#adult?" do
    context "when person of age at least 18 years old" do
      before { luis.age = 18 }
      it { is_expected.to be_adult }
    end

    context "when person of age under 18 years old" do
      before { luis.age = 17 }
      it { is_expected.not_to be_adult }
    end
  end
end
