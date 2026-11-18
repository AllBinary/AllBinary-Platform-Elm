module Org.Allbinary.Game.Combat.Destroy.Event.DestroyEventCircularStaticPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventCircularPool as AllBinaryEventCircularPool
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyEventFactory as DestroyEventFactory


jclass : String
jclass =
    "DestroyEventCircularStaticPool"


jchain : List String
jchain =
    [ "DestroyEventCircularStaticPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EVENT_POOL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_1", jm_init_1 )
        , ( "getInstanceForLayer_1", jm_getInstanceForLayer_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyEventCircularStaticPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_getInstanceForLayer_1", jm_getInstanceForLayer_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DestroyEventCircularStaticPool" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EVENT_POOL" "" JR.this (JR.new AllBinaryEventCircularPool.jnew_1 [ (JR.int 20) ])),
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


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "combatGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initAllBinaryEventCircularPool_1" (JR.thisField "EVENT_POOL") [ (JR.new DestroyEventFactory.jnew_1 [ (JR.local "combatGameCanvas") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForLayer_1 : JR.Method
jm_getInstanceForLayer_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "destroyedEvent" "" (JR.invoke "getNextInstance_0" (JR.thisField "EVENT_POOL") []), 
                    JR.exec (JR.invoke "setLayerInterfaceForCircularStaticPool_1" (JR.local "destroyedEvent") [ (JR.local "layerInterface") ]), 
                    JR.return (JR.local "destroyedEvent") ])
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

