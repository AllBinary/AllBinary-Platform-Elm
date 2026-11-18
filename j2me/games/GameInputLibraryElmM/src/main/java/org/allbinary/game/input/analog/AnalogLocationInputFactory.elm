module Org.Allbinary.Game.Input.Analog.AnalogLocationInputFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.analog
-}

import JR
import Org.Allbinary.Game.Input.Analog.AnalogLocationInput as AnalogLocationInput
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "AnalogLocationInputFactory"


jchain : List String
jchain =
    [ "AnalogLocationInputFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "addPlayer_1", jm_addPlayer_1 )
        , ( "getInstanceForPlayer_1", jm_getInstanceForPlayer_1 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnalogLocationInputFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_addPlayer_1", jm_addPlayer_1 ), ( "jm_getInstanceForPlayer_1", jm_getInstanceForPlayer_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AnalogLocationInputFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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


jm_addPlayer_1 : JR.Method
jm_addPlayer_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "analogLocationInput" "" AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT, 
                    JR.ifElse (JR.map2 JR.less (JR.local "playerInputId") (JR.invoke "size_0" (JR.thisField "list") [])) (JR.run [ 
                        JR.exec (JR.setLocal "analogLocationInput" "" (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "playerInputId") ])) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "analogLocationInput") AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT) (JR.run [ 
                        JR.exec (JR.setLocal "analogLocationInput" "" (JR.new AnalogLocationInput.jnew_1 [ (JR.local "playerInputId") ])), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "analogLocationInput") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForPlayer_1 : JR.Method
jm_getInstanceForPlayer_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "playerInputId") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
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

