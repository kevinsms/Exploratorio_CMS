class PrintiFacebook
    include Capybara::DSL

    def getNomePrinti
        
        page.has_css?("div[class='x1e56ztr x1xmf6yo'] h1", wait: 15) 
        return find("div[class='x1e56ztr x1xmf6yo'] h1").text

    end

end