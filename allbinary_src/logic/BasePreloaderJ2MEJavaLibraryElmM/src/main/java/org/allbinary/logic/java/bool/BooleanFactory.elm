module Org.Allbinary.Logic.Java.Bool.BooleanFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.bool
-}

import JR



jclass : String
jclass =
    "BooleanFactory"


jchain : List String
jchain =
    [ "BooleanFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TRUE", JR.defaultOf "" ), ( "FALSE", JR.defaultOf "" ), ( "TRUE_STRING", JR.defaultOf "" ), ( "FALSE_STRING", JR.defaultOf "" ), ( "YES", JR.defaultOf "" ), ( "NO", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "toStringb_1", jm_toStringb_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BooleanFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_toStringb_1", jm_toStringb_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BooleanFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TRUE" "" JR.this (JR.cast "Z" (JR.bool True))),
                JR.exec (JR.setField "FALSE" "" JR.this (JR.cast "Z" (JR.bool False))),
                JR.exec (JR.setField "TRUE_STRING" "" JR.this (JR.invoke "toString_0" (JR.thisField "TRUE") [])),
                JR.exec (JR.setField "FALSE_STRING" "" JR.this (JR.invoke "toString_0" (JR.thisField "FALSE") [])),
                JR.exec (JR.setField "YES" "" JR.this (JR.str "yes")),
                JR.exec (JR.setField "NO" "" JR.this (JR.str "no")),
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


jm_toStringb_1 : JR.Method
jm_toStringb_1 jheap jthis jargs =
    JR.method [ ( "bool", "Z" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.local "bool") (JR.run [ 
                        JR.return (JR.thisField "TRUE_STRING") ]) (JR.run [ 
                        JR.return (JR.thisField "FALSE_STRING") ]) ])
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

