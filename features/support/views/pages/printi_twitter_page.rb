class PrintiTwitter
    include Capybara::DSL

    def getNomePrinti
        page.has_css?(".css-901oao.r-1awozwy.r-18jsvk2.r-6koalj.r-1qd0xha.r-adyw6z.r-1vr29t4.r-135wba7.r-bcqeeo.r-1udh08x.r-qvutc0", wait: 15) 
        return find(".css-901oao.r-1awozwy.r-18jsvk2.r-6koalj.r-1qd0xha.r-adyw6z.r-1vr29t4.r-135wba7.r-bcqeeo.r-1udh08x.r-qvutc0").text
    end

end