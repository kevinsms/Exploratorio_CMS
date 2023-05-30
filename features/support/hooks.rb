Before do
    @home_page = HomePage.new
    @printi_facebook = PrintiFacebook.new
    @shared = Shared.new
    @printi_twitter = PrintiTwitter.new
    @printi_linkedin = PrintiLinkedin.new
    @printi_pinterest = PrintiPinterest.new
    @printi_medium = PrintiMedium.new
    page.driver.browser.manage.window.maximize
end

After do |scenario|

    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        tirar_foto(scenario_name.downcase!,'falhou')
    else
        tirar_foto(scenario_name.downcase!,'passou')
    end
    
end

