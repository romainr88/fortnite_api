module FortniteApi
    class GlobalDuo
        attr_reader :values
            
        def initialize(hash={})
            @values = hash
        end
        
        def duo_custom
            self.values['p10']
        end
        
        def duo_trnrating
            self.values['p10']['trnRating']
        end
        
        def duo_score
            self.values['p10']['score']
        end

        def duo_scorepermatch
            self.values['p10']['scorePerMatch']
        end        
        
        def duo_top1
            self.values['p10']['top1']
        end
        
        def duo_top10
            self.values['p10']['top10']
        end
        
        def duo_top105
            self.values['p10']['top105']
        end
        
        def duo_winratio
            self.values['p10']['winRatio']
        end        
        
        def duo_kills
            self.values['p10']['kills']
        end
        
        def duo_kd
            self.values['p10']['kd']
        end
        
        def duo_kpg
            self.values['p10']['kpg']
        end        
    end
end