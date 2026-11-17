module ImmutableBasicArrayList exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import BasicArrayListS
import ForcedLogUtil


jclass : String
jclass =
    "ImmutableBasicArrayList"


jchain : List String
jchain =
    [ "ImmutableBasicArrayList" ]
        ++ BasicArrayListS.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicArrayListS.jfields ++ [ ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "addAt_2", jm_addAt_2 )
        , ( "toString_0", jm_toString_0 ) ]
        BasicArrayListS.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImmutableBasicArrayList"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_addAt_2", jm_addAt_2 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "size", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicArrayListS.jinit_1 JR.this [ (JR.local "size") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "e", "" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.thisField "name"), JR.this ]), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_addAt_2 : JR.Method
jm_addAt_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "element", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.thisField "name"), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
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

