class Shared 
    include Capybara::DSL

    def troca_janela
        sleep 2
        switch_to_window windows.last
        
    end


    def fecha_janela
        sleep 5
        windows.last.close
    end

end