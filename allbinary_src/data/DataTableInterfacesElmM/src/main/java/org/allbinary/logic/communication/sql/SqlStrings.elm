module Org.Allbinary.Logic.Communication.Sql.SqlStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.sql
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps


jclass : String
jclass =
    "SqlStrings"


jchain : List String
jchain =
    [ "SqlStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "CREATE_DATABASE", JR.defaultOf "" ), ( "DROP_TABLE", JR.defaultOf "" ), ( "CREATE_TABLE", JR.defaultOf "" ), ( "START", JR.defaultOf "" ), ( "SELECT", JR.defaultOf "" ), ( "FROM", JR.defaultOf "" ), ( "SELECT_ALL", JR.defaultOf "" ), ( "WHERE", JR.defaultOf "" ), ( "AND", JR.defaultOf "" ), ( "UPDATE", JR.defaultOf "" ), ( "SET", JR.defaultOf "" ), ( "SELECT_ALL_FROM", JR.defaultOf "" ), ( "DELETE", JR.defaultOf "" ), ( "LIKE_QUOTE", JR.defaultOf "" ), ( "INSERT_INTO", JR.defaultOf "" ), ( "VALUES", JR.defaultOf "" ), ( "ORDER_BY", JR.defaultOf "" ), ( "COUNT", JR.defaultOf "" ), ( "ASC", JR.defaultOf "" ), ( "DESC", JR.defaultOf "" ), ( "PRIMARY_KEY", JR.defaultOf "" ), ( "END", JR.defaultOf "" ), ( "EQUAL_QUOTE", JR.defaultOf "" ), ( "CLOSE_QUOTE", JR.defaultOf "" ), ( "EQUAL_QUOTE_NO_SPACE", JR.defaultOf "" ), ( "ESCAPE", JR.defaultOf "" ), ( "DOUBLE_ESCAPE", JR.defaultOf "" ), ( "MORE_THAN_QUOTE", JR.defaultOf "" ), ( "LESS_THAN_QUOTE", JR.defaultOf "" ), ( "SINGLE_QUOTE_COMMA_SEP", JR.defaultOf "" ), ( "ID", JR.defaultOf "" ), ( "SQL_STATEMENT_LABEL", JR.defaultOf "" ), ( "COLUMN_VALUE", JR.defaultOf "" ), ( "CREATE_RETURN", JR.defaultOf "" ), ( "FIELD_VALUE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SqlStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SqlStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "CREATE_DATABASE" "" JR.this (JR.str "CREATE DATABASE ")),
                JR.exec (JR.setField "DROP_TABLE" "" JR.this (JR.str "DROP TABLE ")),
                JR.exec (JR.setField "CREATE_TABLE" "" JR.this (JR.str "CREATE TABLE ")),
                JR.exec (JR.setField "START" "" JR.this (JR.str " (")),
                JR.exec (JR.setField "SELECT" "" JR.this (JR.str "SELECT ")),
                JR.exec (JR.setField "FROM" "" JR.this (JR.str " FROM ")),
                JR.exec (JR.setField "SELECT_ALL" "" JR.this (JR.str "SELECT *")),
                JR.exec (JR.setField "WHERE" "" JR.this (JR.str " WHERE ")),
                JR.exec (JR.setField "AND" "" JR.this (JR.str " AND ")),
                JR.exec (JR.setField "UPDATE" "" JR.this (JR.str "UPDATE ")),
                JR.exec (JR.setField "SET" "" JR.this (JR.str " SET ")),
                JR.exec (JR.setField "SELECT_ALL_FROM" "" JR.this (JR.concat (JR.thisField "SELECT_ALL") (JR.thisField "FROM"))),
                JR.exec (JR.setField "DELETE" "" JR.this (JR.str "DELETE")),
                JR.exec (JR.setField "LIKE_QUOTE" "" JR.this (JR.str " LIKE \"")),
                JR.exec (JR.setField "INSERT_INTO" "" JR.this (JR.str "INSERT INTO ")),
                JR.exec (JR.setField "VALUES" "" JR.this (JR.str " VALUES ('")),
                JR.exec (JR.setField "ORDER_BY" "" JR.this (JR.str "ORDER BY")),
                JR.exec (JR.setField "COUNT" "" JR.this (JR.str "COUNT(")),
                JR.exec (JR.setField "ASC" "" JR.this (JR.str "ASC")),
                JR.exec (JR.setField "DESC" "" JR.this (JR.str "DESC")),
                JR.exec (JR.setField "PRIMARY_KEY" "" JR.this (JR.str "PRIMARY KEY(")),
                JR.exec (JR.setField "END" "" JR.this (JR.str ") )")),
                JR.exec (JR.setField "EQUAL_QUOTE" "" JR.this (JR.str " = \"")),
                JR.exec (JR.setField "CLOSE_QUOTE" "" JR.this (JR.field "QUOTE" (JR.callStatic CommonSeps.jm_getInstance_0 []))),
                JR.exec (JR.setField "EQUAL_QUOTE_NO_SPACE" "" JR.this (JR.str "=\"")),
                JR.exec (JR.setField "ESCAPE" "" JR.this (JR.str "\\")),
                JR.exec (JR.setField "DOUBLE_ESCAPE" "" JR.this (JR.str "\\\\")),
                JR.exec (JR.setField "MORE_THAN_QUOTE" "" JR.this (JR.str " > \"")),
                JR.exec (JR.setField "LESS_THAN_QUOTE" "" JR.this (JR.str " < \"")),
                JR.exec (JR.setField "SINGLE_QUOTE_COMMA_SEP" "" JR.this (JR.str "','")),
                JR.exec (JR.setField "ID" "" JR.this (JR.str "ID")),
                JR.exec (JR.setField "SQL_STATEMENT_LABEL" "" JR.this (JR.str "SQL Statement: ")),
                JR.exec (JR.setField "COLUMN_VALUE" "" JR.this (JR.str "\nColumn Value: ")),
                JR.exec (JR.setField "CREATE_RETURN" "" JR.this (JR.str " Created Successfully")),
                JR.exec (JR.setField "FIELD_VALUE" "" JR.this (JR.str "\nField Value: ")),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

