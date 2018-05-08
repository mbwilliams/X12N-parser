require 'X221/isa'

module X221
  describe Isa do
    before do
      @raw_data = "ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~"
      @isa = Isa.new(@raw_data)
    end

    it "has Segment ID value ISA" do
      expect(@isa.segment_id).to eq('ISA')
    end

    it "has a segment name" do
      expect(@isa.name).to eq('Interchange Control Header')
    end
  end
end
