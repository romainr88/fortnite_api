module FortniteApi
    class Player
        attr_reader :epicuserhandle, :platformnamelong, :stats, :lifetimestats, :recentmatches
        
        def initialize(opts={})
            opts.each { |k,v| instance_variable_set("@#{k.downcase}", v) }
        end
        
        def global_stats
            GlobalSolo.new(self.stats)
            GlobalDuo.new(self.stats)
            GlobalSquad.new(self.stats)
        end
    end
end