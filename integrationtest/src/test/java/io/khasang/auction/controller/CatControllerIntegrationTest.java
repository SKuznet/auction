package io.khasang.auction.controller;

import io.khasang.auction.entity.Cat;
import io.khasang.auction.entity.CatWoman;
import org.junit.Test;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.*;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public class CatControllerIntegrationTest {
    private static final String ROOT = "http://localhost:8080/cat";
    private static final String ADD = "/add";
    private static final String ALL = "/all";
    private static final String GET_BY_ID = "/get";

    @Test
    public void addCat() {
        Cat cat = createdCat();

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Cat> responseEntity = restTemplate.exchange(
                ROOT + GET_BY_ID + "/{id}",
                HttpMethod.GET,
                null,
                Cat.class,
                cat.getId()
        );

        assertEquals("OK", responseEntity.getStatusCode().getReasonPhrase());
        assertNotNull(responseEntity.getBody());
    }

    @Test
    public void checkGetAllCats() {
        createdCat();
        createdCat();

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<List<Cat>> responseEntity = restTemplate.exchange(
                ROOT + ALL,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Cat>>() {
                }
        );

        List<Cat> cats = responseEntity.getBody();
        assertNotNull(cats.get(0));
        assertNotNull(cats.get(1));
    }

    private Cat createdCat() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON_UTF8);

        Cat cat = prefillCat();
        HttpEntity<Cat> entity = new HttpEntity<>(cat, headers);

        RestTemplate restTemplate = new RestTemplate();
        Cat createdCat = restTemplate.exchange(
                ROOT + ADD,
                HttpMethod.POST,
                entity,
                Cat.class
        ).getBody();

        assertNotNull(createdCat);
        assertNotNull(createdCat.getName());
        return createdCat;
    }

    private Cat prefillCat() {
        Cat cat = new Cat();
        cat.setName("Barsik");
        cat.setDescription("Happy");

        CatWoman riska = new CatWoman();
        riska.setName("riska");
        riska.setDescription("good");
        CatWoman murka = new CatWoman();
        murka.setName("murka");
        murka.setDescription("sleepy");
        List<CatWoman> catWomens = new ArrayList<>();
        catWomens.add(murka);
        catWomens.add(riska);
        cat.setCatWomanList(catWomens);

        return cat;
    }
}
