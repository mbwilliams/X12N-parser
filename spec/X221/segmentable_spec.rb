require 'X221/segmentable'

module X221
  describe Segmentable do

    it "has a segment terminator constant" do
      expect(Segmentable::SEGMENT_TERMINATOR).to eq('~')
    end

    it "has a data element separator" do
      expect(Segmentable::DATA_ELEMENT_SEPARATOR).to eq('*')
    end

    it "has the name of all segment types" do
      segment_keys = [:isa, :gs, :ge, :st]
      expect(Segmentable::SEGMENT_NAMES.keys).to eq(segment_keys)
    end
  end
end
