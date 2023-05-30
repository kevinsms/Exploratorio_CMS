class PrintiPinterest
    include Capybara::DSL

    def getNomePrinti
        
        page.has_css?("h1 .FNs.zI7.iyn.Hsu", wait: 15) 
        return find("h1 .FNs.zI7.iyn.Hsu").text

    end

end