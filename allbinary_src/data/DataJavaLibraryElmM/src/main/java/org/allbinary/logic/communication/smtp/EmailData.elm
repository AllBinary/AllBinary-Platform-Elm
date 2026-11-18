module Org.Allbinary.Logic.Communication.Smtp.EmailData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.smtp
-}

import JR



jclass : String
jclass =
    "EmailData"


jchain : List String
jchain =
    [ "EmailData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EmailData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SERVER", jstatic_SERVER ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_FROM", jstatic_FROM ), ( "jstatic_TO", jstatic_TO ), ( "jstatic_CC", jstatic_CC ), ( "jstatic_BCC", jstatic_BCC ), ( "jstatic_SUBJECT", jstatic_SUBJECT ), ( "jstatic_CONTENT", jstatic_CONTENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SERVER : JR.M
jstatic_SERVER s =
    JR.static "EmailData" jclinit "SERVER"
        (JR.str "EMAIL_SERVER")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "EmailData" jclinit "NAME"
        (JR.str "EMAIL_NAME")
        s


jstatic_FROM : JR.M
jstatic_FROM s =
    JR.static "EmailData" jclinit "FROM"
        (JR.str "EMAIL_FROM")
        s


jstatic_TO : JR.M
jstatic_TO s =
    JR.static "EmailData" jclinit "TO"
        (JR.str "EMAIL_TO")
        s


jstatic_CC : JR.M
jstatic_CC s =
    JR.static "EmailData" jclinit "CC"
        (JR.str "EMAIL_CC")
        s


jstatic_BCC : JR.M
jstatic_BCC s =
    JR.static "EmailData" jclinit "BCC"
        (JR.str "EMAIL_BCC")
        s


jstatic_SUBJECT : JR.M
jstatic_SUBJECT s =
    JR.static "EmailData" jclinit "SUBJECT"
        (JR.str "EMAIL_SUBJECT")
        s


jstatic_CONTENT : JR.M
jstatic_CONTENT s =
    JR.static "EmailData" jclinit "CONTENT"
        (JR.str "EMAIL_CONTENT")
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

