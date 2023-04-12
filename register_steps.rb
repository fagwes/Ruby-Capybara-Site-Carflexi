
#Abrindo o navegador e maximizando a tela
Given("Cliquei em Entrar") do
    visit "https://www.carflexi.com/pt"
    page.windows[0].maximize
end

#Percorrendo o caminho com comandos
When("Eu clico nos campos obrigatórios") do

    find(:xpath,'//*[@id="cookie-policy-msg"]/div/div/div[2]/div[1]/button[2]').click
    find(:xpath,'//*[@id="search-autocomplete"]').set('guarulhos')
    find(:xpath,'//*[@id="quickSearch"]/div[1]/div/ul/li/ul[1]/li[1]/a/span[1]/span').click

    click_on 'Procurar'
    
end

#Tirando evidência do teste
Then("pesquisa realizada com sucesso") do
save_screenshot
end

