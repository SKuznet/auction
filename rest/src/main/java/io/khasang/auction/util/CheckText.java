package io.khasang.auction.util;

import net.yandex.speller.services.spellservice.CheckTextRequest;
import net.yandex.speller.services.spellservice.SpellServiceSoap;
import org.springframework.stereotype.Component;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import java.net.MalformedURLException;
import java.net.URL;

@Component
public class CheckText {

    private static final String ADDRESS = "http://speller.yandex.net/services/spellservice?WSDL";

    public String checkWord(String text) {
        URL url = null;

        try {
            url = new URL(ADDRESS);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }

        QName qName = new QName("http://speller.yandex.net/services/spellservice", "SpellService");
        Service service = Service.create(url, qName);

        SpellServiceSoap spellService = service.getPort(SpellServiceSoap.class);

        CheckTextRequest request = new CheckTextRequest();
        request.setText(text);
        request.setFormat("plain");
        request.setLang("en");

        if (spellService.checkText(request).getSpellResult().getError().size() != 0) {
            return spellService.checkText(request).getSpellResult().getError().get(0).getS().toString();
        } else {
            return "word correct!";
        }
    }
}
