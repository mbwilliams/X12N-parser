require 'X221/segment'

module X221
  describe Segment do
    before do
      @raw_data = "ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~"
      @segment = Segment.new(@raw_data)
    end

    it "has Segment ID identified by the first element of the raw data string" do
      expect(@segment.segment_id).to eq(@raw_data.split('*')[0])
    end
  end
end
