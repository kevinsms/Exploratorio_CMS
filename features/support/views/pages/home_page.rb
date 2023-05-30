class HomePage
    include Capybara::DSL
    
        def link_facebook

            page.has_css?("a[type='facebook']", wait: 15)
            link_facebook = find("a[type='facebook']")
            return link_facebook
            
        end 

        def link_twitter

            page.has_css?("a[type='twitter']", wait: 15) 
            link_twitter = find("a[type='twitter']")
            return link_twitter

        end
        
        def link_linkedin

            page.has_css?("a[type='linkedin']", wait: 15)
            link_linkedin = find("a[type='linkedin']")
            return link_linkedin

        end
        
        def link_instagram
            
            link_instagram = find("a[type='instagram']")
            return link_instagram

        end
        

        def link_pinterest

            page.has_css?("a[type='pinterest']", wait: 15)
            link_pinterest = find("a[type='pinterest']")
            return link_pinterest
            
        end
        
        def link_medium

            page.has_css?("a[type='medium']", wait: 15)   
            link_medium = find("a[type='medium']")    
            return link_medium

        end
        
        def open
            visit "/"
        end


        def aceitar_cookie_banner

            page.has_css?("div[type='default']", wait: 15)
            click_button 'Concordar e fechar'
        
        end
end