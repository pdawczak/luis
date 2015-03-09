require "spec_helper"
require_relative "../lib/person"
require_relative "../lib/person_list"

RSpec.describe PersonList do
  let(:luis)  { Person.new("Luis", 27)  }
  let(:pawel) { Person.new("Pawel", 28) }
  let(:john)  { Person.new("John", 17)  }
  let(:ann)   { Person.new("Ann", 10)   }

  let(:person_list) { PersonList.new([luis, pawel, john, ann]) }

  describe "#adults" do
    it "returns array of adults only" do
      expect(person_list.adults).to eq [luis, pawel]
    end
  end

  describe "#youth" do
    it "returns array of non adults only" do
      expect(person_list.youth).to eq [john, ann]
    end
  end
end
