module GameStatisticsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import BaseGameStatistics
import StringMaker


jclass : String
jclass =
    "GameStatisticsFactory"


jchain : List String
jchain =
    [ "GameStatisticsFactory" ]
        ++ BaseGameStatistics.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseGameStatistics.jfields ++ [ ( "stringBuffer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "add_1", jm_add_1 )
        , ( "toString_0", jm_toString_0 ) ]
        BaseGameStatistics.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameStatisticsFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameStatisticsFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseGameStatistics.jinit_0 JR.this []),
            JR.exec (JR.setField "stringBuffer" "" JR.this (JR.new StringMaker.jnew_0 [])),
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


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "length_0" (JR.thisField "stringBuffer") []) (JR.int 12000)) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.thisField "stringBuffer") [ (JR.str "Old Stats Cleared") ]) ]) identity, 
                    JR.exec (JR.invoke "append_1" (JR.thisField "stringBuffer") [ (JR.local "string") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.callVia BaseGameStatistics.jvtable "toString_0" JR.this []) ]) [ (JR.invoke "toString_0" (JR.thisField "stringBuffer") []) ]) []) ])
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

