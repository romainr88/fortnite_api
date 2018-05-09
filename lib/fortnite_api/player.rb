module FortniteApi
    class Player
        attr_reader :epicuserhandle, :platformnamelong, :stats, :lifetimestats, :recentmatches
        def initialize(opts={})
            opts.each { |k,v| instance_variable_set("@#{k.downcase}", v) }
        end
    end
end