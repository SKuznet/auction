package io.khasang.auction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class CreateTableUsers {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public String getTableCreationStatus() {
        try {jdbcTemplate.execute("DROP TABLE IF EXISTS public.users");
            jdbcTemplate.execute("CREATE TABLE public.users(\n" +
                    "\tid integer NOT NULL,\n" +
                    "\tname varchar(255) NOT NULL,\n" +
                    "\temail varchar(255) NOT NULL,\n" +
                    "\tsurname varchar(255) NOT NULL,\n" +
                    "\tmiddle_name varchar(255) NOT NULL,\n" +
                    "\trole varchar(255) NOT NULL DEFAULT USER,\n" +
                    "\tnickname varchar(255) NOT NULL,\n" +
                    "\tpassword varchar(255) NOT NULL,\n" +
                    "\tCONSTRAINT users_pk PRIMARY KEY (id)\n" +
                    "\n" +
                    ");\n" +
                    "COMMENT ON COLUMN public.users.id IS 'id';\n" +
                    "COMMENT ON COLUMN public.users.name IS 'Имя пользователя';\n" +
                    "COMMENT ON COLUMN public.users.email IS 'Адрес электронной почты';\n" +
                    "COMMENT ON COLUMN public.users.surname IS 'Фамилия';\n" +
                    "COMMENT ON COLUMN public.users.middle_name IS 'Отчество';\n" +
                    "COMMENT ON COLUMN public.users.role IS 'Роль';\n" +
                    "COMMENT ON COLUMN public.users.password IS 'Пароль';\n" +
                    "COMMENT ON COLUMN public.users.nickname IS 'Ник';");
            return "table 'Users' created!";
        } catch (BadSqlGrammarException e) {
            return "Failed: " + e;
        }
    }
}
