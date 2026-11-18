module Org.Allbinary.Logic.Communication.Sql.SqlTypeStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.sql
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "SqlTypeStrings"


jchain : List String
jchain =
    [ "SqlTypeStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "CHAR_COLUMN", JR.defaultOf "" ), ( "INT_COLUMN", JR.defaultOf "" ), ( "MAX_SIZE", JR.defaultOf "" ), ( "SIXTY_SIZE", JR.defaultOf "" ), ( "NOT_NULL", JR.defaultOf "" ), ( "ONE_SIZE", JR.defaultOf "" ), ( "TWO_SIZE", JR.defaultOf "" ), ( "THREE_SIZE", JR.defaultOf "" ), ( "SIX_SIZE", JR.defaultOf "" ), ( "ELEVEN_SIZE", JR.defaultOf "" ), ( "TWELVE_SIZE", JR.defaultOf "" ), ( "ONE_KB_CHAR_COLUMN", JR.defaultOf "" ), ( "MAX_CHAR_COLUMN", JR.defaultOf "" ), ( "MAX_CHAR_COLUMN_NOT_NULL", JR.defaultOf "" ), ( "SIXTY_CHAR_COLUMN_NOT_NULL", JR.defaultOf "" ), ( "ONE_CHAR_COLUMN_NOT_NULL", JR.defaultOf "" ), ( "SIX_CHAR_COLUMN_NOT_NULL", JR.defaultOf "" ), ( "TWELVE_CHAR_COLUMN_NOT_NULL", JR.defaultOf "" ), ( "TWO_INT_NOT_NULL", JR.defaultOf "" ), ( "THREE_INT_NOT_NULL", JR.defaultOf "" ), ( "FOUR_INT_NOT_NULL", JR.defaultOf "" ), ( "MAX_INT_NOT_NULL", JR.defaultOf "" ), ( "MAX_INT_UNSIGNED", JR.defaultOf "" ), ( "MAX_INT_UNSIGNED_NOT_NULL", JR.defaultOf "" ), ( "MAX_BIG_INT_NOT_NULL", JR.defaultOf "" ), ( "MAX_BIG_INT_UNSIGNED", JR.defaultOf "" ), ( "MAX_BIG_INT_UNSIGNED_NOT_NULL", JR.defaultOf "" ), ( "MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL", JR.defaultOf "" ), ( "LONG_BLOB", JR.defaultOf "" ), ( "BLOB", JR.defaultOf "" ), ( "BLOB_NOT_NULL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SqlTypeStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SqlTypeStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "CHAR_COLUMN" "" JR.this (JR.str "VARCHAR")),
                JR.exec (JR.setField "INT_COLUMN" "" JR.this (JR.str "VARCHAR")),
                JR.exec (JR.setField "MAX_SIZE" "" JR.this (JR.str "(255)")),
                JR.exec (JR.setField "SIXTY_SIZE" "" JR.this (JR.str "(60)")),
                JR.exec (JR.setField "NOT_NULL" "" JR.this (JR.str "NOT NULL")),
                JR.exec (JR.setField "ONE_SIZE" "" JR.this (JR.str "(1)")),
                JR.exec (JR.setField "TWO_SIZE" "" JR.this (JR.str "(2)")),
                JR.exec (JR.setField "THREE_SIZE" "" JR.this (JR.str "(3)")),
                JR.exec (JR.setField "SIX_SIZE" "" JR.this (JR.str "(6)")),
                JR.exec (JR.setField "ELEVEN_SIZE" "" JR.this (JR.str "(11)")),
                JR.exec (JR.setField "TWELVE_SIZE" "" JR.this (JR.str "(12)")),
                JR.exec (JR.setField "ONE_KB_CHAR_COLUMN" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.str "(1024)") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "MAX_CHAR_COLUMN" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.thisField "MAX_SIZE") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "MAX_CHAR_COLUMN_NOT_NULL" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.thisField "MAX_SIZE") ]) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "NOT_NULL") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "SIXTY_CHAR_COLUMN_NOT_NULL" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.thisField "SIXTY_SIZE") ]) [ (JR.thisField "NOT_NULL") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "ONE_CHAR_COLUMN_NOT_NULL" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.thisField "ONE_SIZE") ]) [ (JR.thisField "NOT_NULL") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "SIX_CHAR_COLUMN_NOT_NULL" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.thisField "SIX_SIZE") ]) [ (JR.thisField "NOT_NULL") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "TWELVE_CHAR_COLUMN_NOT_NULL" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.thisField "CHAR_COLUMN") ]) [ (JR.thisField "TWELVE_SIZE") ]) [ (JR.thisField "NOT_NULL") ]) [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [])),
                JR.exec (JR.setField "TWO_INT_NOT_NULL" "" JR.this (JR.str " INT(2) NOT NULL, ")),
                JR.exec (JR.setField "THREE_INT_NOT_NULL" "" JR.this (JR.str " INT(3) NOT NULL, ")),
                JR.exec (JR.setField "FOUR_INT_NOT_NULL" "" JR.this (JR.str " INT(4) NOT NULL, ")),
                JR.exec (JR.setField "MAX_INT_NOT_NULL" "" JR.this (JR.str " INT(11) NOT NULL, ")),
                JR.exec (JR.setField "MAX_INT_UNSIGNED" "" JR.this (JR.str " INT(11) UNSIGNED, ")),
                JR.exec (JR.setField "MAX_INT_UNSIGNED_NOT_NULL" "" JR.this (JR.str " INT(11) UNSIGNED NOT NULL, ")),
                JR.exec (JR.setField "MAX_BIG_INT_NOT_NULL" "" JR.this (JR.str " BIGINT(19) NOT NULL, ")),
                JR.exec (JR.setField "MAX_BIG_INT_UNSIGNED" "" JR.this (JR.str " BIGINT(19) UNSIGNED, ")),
                JR.exec (JR.setField "MAX_BIG_INT_UNSIGNED_NOT_NULL" "" JR.this (JR.str " BIGINT(19) UNSIGNED NOT NULL, ")),
                JR.exec (JR.setField "MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL" "" JR.this (JR.str " BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,")),
                JR.exec (JR.setField "LONG_BLOB" "" JR.this (JR.str " LONGBLOB, ")),
                JR.exec (JR.setField "BLOB" "" JR.this (JR.str " BLOB, ")),
                JR.exec (JR.setField "BLOB_NOT_NULL" "" JR.this (JR.str " BLOB NOT NULL, ")),
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

