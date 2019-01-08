module FortniteApi
    class GlobalSquad
        attr_reader :values
            
        def initialize(hash={})
            @values = hash
        end
     
        def squad_custom
            self.values['p9']
        end
        
        def squad_trnrating
            self.values['p9']['trnRating']
        end
        
        def squad_score
            self.values['p9']['score']
        end

        def squad_scorepermatch
            self.values['p9']['scorePerMatch']
        end        
        
        def squad_top1
            self.values['p9']['top1']
        end
        
        def squad_top9
            self.values['p9']['top9']
        end
        
        def squad_top95
            self.values['p9']['top95']
        end
        
        def squad_winratio
            self.values['p9']['winRatio']
        end        
        
        def squad_kills
            self.values['p9']['kills']
        end
        
        def squad_kd
            self.values['p9']['kd']
        end
        
        def squad_kpg
            self.values['p9']['kpg']
        end
    end
end