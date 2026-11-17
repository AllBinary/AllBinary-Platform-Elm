module AbPathData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.path
-}

import JR
import CommonSeps


jclass : String
jclass =
    "AbPathData"


jchain : List String
jchain =
    [ "AbPathData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EXTENSION_SEP", JR.defaultOf "" ), ( "SEPARATORCHAR", JR.defaultOf "C" ), ( "SEPARATOR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbPathData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbPathData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EXTENSION_SEP" "" JR.this (JR.field "PERIOD" (JR.callStatic CommonSeps.jm_getInstance_0 []))),
                JR.exec (JR.setField "SEPARATORCHAR" "C" JR.this (JR.char 47)),
                JR.exec (JR.setField "SEPARATOR" "" JR.this (JR.field "FORWARD_SLASH" (JR.callStatic CommonSeps.jm_getInstance_0 []))),
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

