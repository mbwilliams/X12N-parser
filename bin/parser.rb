# ruby parser for 835 file
require_relative '../lib/X221/isa'

isa = X221::Isa.new("ISA*00*..........*01*SECRET....*ZZ*SUBMITTERS.ID..*ZZ* RECEIVERS.ID...*030101*1253*^*00501*000000905*1*T*:~")
p isa
