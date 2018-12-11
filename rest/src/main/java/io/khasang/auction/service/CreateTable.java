package io.khasang.auction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class CreateTable {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public String getTableCreationStatus() {
        try {
            jdbcTemplate.execute("DROP TABLE IF EXISTS dogs");
            jdbcTemplate.execute("CREATE TABLE public.dogs\n" +
                    "(\n" +
                    "    id integer NOT NULL,\n" +
                    "    name character varying(255) COLLATE pg_catalog.\"default\",\n" +
                    "    description character varying(255) COLLATE pg_catalog.\"default\",\n" +
                    "    color_id integer,\n" +
                    "    CONSTRAINT dogs_pkey PRIMARY KEY (id)\n" +
                    ")");
            return "table created!";
        } catch (BadSqlGrammarException e) {
            return "Failed: " + e;
        }
    }

}
