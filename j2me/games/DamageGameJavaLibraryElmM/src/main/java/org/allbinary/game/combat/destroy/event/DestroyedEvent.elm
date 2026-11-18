module Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEventHandler as DestroyedEventHandler
import Org.Allbinary.Game.Displayable.Canvas.NullGameCanvas as NullGameCanvas
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "DestroyedEvent"


jchain : List String
jchain =
    [ "DestroyedEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "allBinaryGameCanvas", JR.defaultOf "" ), ( "allBinaryLayerInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAllBinaryGameCanvas_0", jm_getAllBinaryGameCanvas_0 )
        , ( "getLayerInterface_0", jm_getLayerInterface_0 )
        , ( "setAllBinaryGameCanvas_1", jm_setAllBinaryGameCanvas_1 )
        , ( "setLayerInterfaceForCircularStaticPool_1", jm_setLayerInterfaceForCircularStaticPool_1 )
        , ( "toString_0", jm_toString_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyedEvent"
        [ ( "jm_getAllBinaryGameCanvas_0", jm_getAllBinaryGameCanvas_0 ), ( "jm_getLayerInterface_0", jm_getLayerInterface_0 ), ( "jm_setAllBinaryGameCanvas_1", jm_setAllBinaryGameCanvas_1 ), ( "jm_setLayerInterfaceForCircularStaticPool_1", jm_setLayerInterfaceForCircularStaticPool_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "combatGameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.callStatic DestroyedEventHandler.jm_getInstance_0 []) ]),
                JR.exec (JR.setField "allBinaryGameCanvas" "" JR.this (JR.callStatic NullGameCanvas.jm_getInstance_0 [])),
                JR.exec (JR.setField "allBinaryLayerInterface" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setAllBinaryGameCanvas_1" JR.this [ (JR.local "combatGameCanvas") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getAllBinaryGameCanvas_0 : JR.Method
jm_getAllBinaryGameCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "allBinaryGameCanvas") ])
        (jregister jheap)
        jthis
        jargs


jm_getLayerInterface_0 : JR.Method
jm_getLayerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "allBinaryLayerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setAllBinaryGameCanvas_1 : JR.Method
jm_setAllBinaryGameCanvas_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "allBinaryGameCanvas" "" JR.this (JR.local "allBinaryGameCanvas")) ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerInterfaceForCircularStaticPool_1 : JR.Method
jm_setLayerInterfaceForCircularStaticPool_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "allBinaryLayerInterface" "" JR.this (JR.local "allBinaryLayerInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "DestroyedEvent: \n") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "AllBinaryLayerInterface: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "allBinaryLayerInterface") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "\nAllBinaryGameCanvas: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getAllBinaryGameCanvas_0" JR.this []) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

