Dado('acesso a pagina home') do
    @home_page.open
end
  
Quando('clicar no link do Facebook') do
    @home_page.link_facebook.click
end
  
Então('sou redirecionado para a pagina do facebook') do
        @shared.troca_janela
        expect(current_url).to eql 'https://www.facebook.com/PrintiBR/'
        @mensagem = @printi_facebook.getNomePrinti
        expect(@mensagem).to eql "Printi"
        
end
  
Quando('clicar no link do Twitter') do
    @home_page.link_twitter.click
end
  
Então('sou redirecionado para a pagina do Twitter') do
    @shared.troca_janela
    expect(current_url).to eql 'https://twitter.com/Printi'
    @mensagem = @printi_twitter.getNomePrinti
    expect(@mensagem).to eql "Printi"
end
  
Quando('clicar no link do Linkedin') do
    @home_page.link_linkedin.click
end
 
Então('sou redirecionado para a pagina do Linkedin') do
    @shared.troca_janela
    expect(current_url).to eql 'https://www.linkedin.com/company/printi?original_referer='
    @mensagem = @printi_linkedin.getNomePrinti
    expect(@mensagem).to eql "Sign in to see who you already know at Printi"
    
end
  
Quando('clicar no link do Instagram') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('sou redirecionado para a pagina do Instagram') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('clicar no link do pinterest') do
    @home_page.link_pinterest.click
end
  
Então('sou redirecionado para a pagina do pinterest') do
    @shared.troca_janela
    expect(current_url).to eql 'https://br.pinterest.com/printi/'
    @mensagem = @printi_pinterest.getNomePrinti
    expect(@mensagem).to eql "Printi"
    
end
  
Quando('clicar no link do medium') do
    @home_page.link_medium.click
end
  
Então('sou redirecionado para a pagina do medium') do
    @shared.troca_janela
    expect(current_url).to eql 'https://medium.com/printi-tech'
    @mensagem = @printi_medium.getNomePrinti
    expect(@mensagem).to eql "Printi Tech"
    
end
