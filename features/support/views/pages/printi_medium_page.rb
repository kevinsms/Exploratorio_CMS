class PrintiMedium
    include Capybara::DSL

    def getNomePrinti
        page.has_css?("a[title='Go to Printi Tech'] h1", wait: 15) 
        return find("a[title='Go to Printi Tech'] h1").text

    end

end