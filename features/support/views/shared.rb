class Shared 
    include Capybara::DSL

    def troca_janela
        switch_to_window windows.last
    end


    def fecha_janela
        windows.last.close
    end

end