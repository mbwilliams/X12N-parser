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

    def self.cleanse_raw_data(raw_data)
      raw_data.sub(SEGMENT_TERMINATOR, '').gsub(/[^\S ]/, '')
    end

    def self.build_data_elements(cleansed_raw_data)
      cleansed_raw_data.split(DATA_ELEMENT_SEPARATOR)
    end
  end
end
