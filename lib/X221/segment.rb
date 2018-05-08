require_relative 'segmentable'

module X221
  class Segment
    include Segmentable

    attr_reader :segment_id, :name

    def initialize(raw_data)
      @raw_data = Segmentable.cleanse_raw_data(raw_data)
      @data_elements = Segmentable.build_data_elements(@raw_data)
      @segment_id = @data_elements.first
    end
  end
end
