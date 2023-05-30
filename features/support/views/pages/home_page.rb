class HomePage
    include Capybara::DSL
    
        def link_facebook

            page.has_css?("a[type='facebook']", wait: 15) 
            link_facebook = find("a[type='facebook']")
            return link_facebook
            
        end 

        def link_twitter

            link_twitter = find("a[type='twitter']")
            return link_twitter

        end
        
        def link_linkedin

            link_linkedin = find("a[type='linkedin']")
            return link_linkedin
        end
        
        def link_instagram
            

            link_instagram = find("a[type='instagram']")
            return link_instagram
        end
        

        def link_pinterest

            link_pinterest = find("a[type='pinterest']")
            return link_pinterest
            
        end
        
        def link_medium
           
            link_medium = find("a[type='medium']")    
            return link_medium

        end
        
        def open
            visit "/"
        end

end