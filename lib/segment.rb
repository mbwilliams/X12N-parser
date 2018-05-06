class Segment

  # Convert to Module

  SEGMENT_TERMINATOR          = '~'
  DATA_ELEMENT_SEPARATOR      = '*'

  SEGMENT_NAMES = {
    isa: 'Interchange Control Header',
    gs:  'Functional Group Header',
    ge:  'Functional Group Trailer',
    st:  'Transaction Set Header'
  }

  attr_reader :label, :name, :raw_data

  def initialize(raw_data)
    @raw_data = raw_data.sub(SEGMENT_TERMINATOR, '').strip
    @data_ary = @raw_data.split(DATA_ELEMENT_SEPARATOR)
    @label    = @data_ary.first
  end

end
