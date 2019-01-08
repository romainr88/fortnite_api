module FortniteApi
    class Global

        def initialize(opts={})
            
        end
        
        def score
            self.stats['p2']['score']
        end
    end
end