module FortniteApi
    class GlobalSolo
        attr_reader :values
            
        def initialize(hash={})
            @values = hash
        end
        
        def solo_custom
            self.values['p2']
        end
        
        def solo_trnrating
            self.values['p2']['trnRating']
        end
        
        def solo_score
            self.values['p2']['score']
        end

        def solo_scorepermatch
            self.values['p2']['scorePerMatch']
        end        
        
        def solo_top1
            self.values['p2']['top1']
        end
        
        def solo_top10
            self.values['p2']['top10']
        end
        
        def solo_top25
            self.values['p2']['top25']
        end
        
        def solo_winratio
            self.values['p2']['winRatio']
        end        
        
        def solo_kills
            self.values['p2']['kills']
        end
        
        def solo_kd
            self.values['p2']['kd']
        end
        
        def solo_kpg
            self.values['p2']['kpg']
        end
    end
end