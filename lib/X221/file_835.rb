require_relative 'isa'
require_relative 'iea'
require_relative 'functional_group'
require_relative 'gs'
require_relative 'ge'

class File835
  attr_reader :isa, :iea, :functional_groups

  def initialize(file_path)
    @file = File.open(file_path)
    @functional_groups = []
    create_segments
  end

  private
    def create_segments

      func_grp = FunctionalGroup.new

      @file.each_line do |line|
        @isa = Isa.new(line) if line.start_with?('ISA')

        func_grp.gs = Gs.new(line) if line.start_with?('GS')
        func_grp.ge = Ge.new(line) if line.start_with?('GE')

        # Add functional group once trailer is found and reset the local
        # func_grp variable
        if func_grp.ge
          @functional_groups << func_grp
          func_grp = FunctionalGroup.new
        end

        @iea = Iea.new(line) if line.start_with?('IEA')

      end
    end
end
