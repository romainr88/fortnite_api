module FortniteApi
    class Global
        attr_reader :values
            
        def initialize(hash={})
            @values = hash
        end
        
        def solo_top1
            self.values['p2']['top1']
        end
    end
end