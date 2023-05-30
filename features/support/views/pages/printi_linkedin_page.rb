class PrintiLinkedin
    include Capybara::DSL

    def getNomePrinti

        page.has_css?("#organization_guest_contextual-sign-in-modal-header", wait: 15) 
        return find("#organization_guest_contextual-sign-in-modal-header").text
        
    end

end