module X221
  module Segmentable
    SEGMENT_TERMINATOR          = '~'
    DATA_ELEMENT_SEPARATOR      = '*'

    SEGMENT_NAMES = {
      isa: 'Interchange Control Header',
      gs:  'Functional Group Header',
      ge:  'Functional Group Trailer',
      st:  'Transaction Set Header'
    }
  end
end
