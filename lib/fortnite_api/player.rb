module FortniteApi
    class Player
        attr_reader :epicuserhandle, :platformnamelong, :stats, :lifetimestats, :recentmatches
        
        def initialize(opts={})
            opts.each { |k,v| instance_variable_set("@#{k.downcase}", v) }
        end
        
        def global_solo
            GlobalSolo.new(self.stats)
        end
        
        def global_duo
            GlobalDuo.new(self.stats)
        end
        
        def global_squad
            GlobalSquad.new(self.stats)
        end
        
        def current_solo
            CurrentSolo.new(self.stats)
        end
        
        def current_duo
            CurrentDuo.new(self.stats)
        end
        
        def current_squad
            CurrentSquad.new(self.stats)
        end
    end
end