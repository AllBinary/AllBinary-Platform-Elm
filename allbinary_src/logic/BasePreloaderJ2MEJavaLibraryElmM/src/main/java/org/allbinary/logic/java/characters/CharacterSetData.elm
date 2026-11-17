module CharacterSetData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.characters
-}

import JR



jclass : String
jclass =
    "CharacterSetData"


jchain : List String
jchain =
    [ "CharacterSetData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "US_ASCII", JR.defaultOf "" ), ( "ISO_8859_1", JR.defaultOf "" ), ( "UTF_8", JR.defaultOf "" ), ( "UTF_16", JR.defaultOf "" ), ( "UTF_16BE", JR.defaultOf "" ), ( "UTF_16LE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CharacterSetData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CharacterSetData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "US_ASCII" "" JR.this (JR.str "US-ASCII")),
                JR.exec (JR.setField "ISO_8859_1" "" JR.this (JR.str "ISO-8859-1")),
                JR.exec (JR.setField "UTF_8" "" JR.this (JR.str "UTF-8")),
                JR.exec (JR.setField "UTF_16" "" JR.this (JR.str "UTF-16")),
                JR.exec (JR.setField "UTF_16BE" "" JR.this (JR.str "UTF-16BE")),
                JR.exec (JR.setField "UTF_16LE" "" JR.this (JR.str "UTF-16LE")),
                identity,
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

