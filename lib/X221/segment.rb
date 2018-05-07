require_relative 'segmentable'

module X221
  class Segment
    include Segmentable

    attr_reader :segment_id, :name

    def initialize(raw_data)
      @raw_data = raw_data.sub(SEGMENT_TERMINATOR, '').strip
      @data_elements = @raw_data.split(DATA_ELEMENT_SEPARATOR)
      @segment_id = @data_elements.first
    end
  end
end
