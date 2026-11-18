module Org.Allbinary.Logic.Communication.Sql.AbSqlData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.sql
-}

import JR



jclass : String
jclass =
    "AbSqlData"


jchain : List String
jchain =
    [ "AbSqlData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbSqlData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_ANYSINGLECHARACTERMATCH", jstatic_ANYSINGLECHARACTERMATCH ), ( "jstatic_ANYMULTICHARACTERMATCH", jstatic_ANYMULTICHARACTERMATCH ), ( "jstatic_MAXNUM", jstatic_MAXNUM ), ( "jstatic_MINSTRING", jstatic_MINSTRING ), ( "jstatic_MAXSTRING", jstatic_MAXSTRING ), ( "jstatic_MAXBLOB", jstatic_MAXBLOB ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ANYSINGLECHARACTERMATCH : JR.M
jstatic_ANYSINGLECHARACTERMATCH s =
    JR.static "AbSqlData" jclinit "ANYSINGLECHARACTERMATCH"
        (JR.str "_")
        s


jstatic_ANYMULTICHARACTERMATCH : JR.M
jstatic_ANYMULTICHARACTERMATCH s =
    JR.static "AbSqlData" jclinit "ANYMULTICHARACTERMATCH"
        (JR.str "%")
        s


jstatic_MAXNUM : JR.M
jstatic_MAXNUM s =
    JR.static "AbSqlData" jclinit "MAXNUM"
        (JR.int 19)
        s


jstatic_MINSTRING : JR.M
jstatic_MINSTRING s =
    JR.static "AbSqlData" jclinit "MINSTRING"
        (JR.int 1)
        s


jstatic_MAXSTRING : JR.M
jstatic_MAXSTRING s =
    JR.static "AbSqlData" jclinit "MAXSTRING"
        (JR.int 255)
        s


jstatic_MAXBLOB : JR.M
jstatic_MAXBLOB s =
    JR.static "AbSqlData" jclinit "MAXBLOB"
        (JR.int 32000)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

