module Org.Allbinary.Game.Ag.Ai.ReverseVelocityBoundsVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Bounds.BoundsVisitorInterface as BoundsVisitorInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "ReverseVelocityBoundsVisitor"


jchain : List String
jchain =
    [ "ReverseVelocityBoundsVisitor" ]
        ++ BoundsVisitorInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "velocityInterface", JR.defaultOf "" ), ( "layerInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getX_0", jm_getX_0 )
        , ( "getY_0", jm_getY_0 )
        , ( "minX_0", jm_minX_0 )
        , ( "maxX_0", jm_maxX_0 )
        , ( "minY_0", jm_minY_0 )
        , ( "maxY_0", jm_maxY_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ReverseVelocityBoundsVisitor"
        [ ( "jm_getX_0", jm_getX_0 ), ( "jm_getY_0", jm_getY_0 ), ( "jm_minX_0", jm_minX_0 ), ( "jm_maxX_0", jm_maxX_0 ), ( "jm_minY_0", jm_minY_0 ), ( "jm_maxY_0", jm_maxY_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "layerInterface" "" JR.this (JR.local "layerInterface")), 
                    JR.declare "velocityInterfaceCompositeInterface" "" (JR.local "layerInterface"), 
                    JR.exec (JR.setField "velocityInterface" "" JR.this (JR.invoke "getVelocityProperties_0" (JR.local "velocityInterfaceCompositeInterface") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getX_0 : JR.Method
jm_getX_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getXP_0" (JR.thisField "layerInterface") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getYP_0" (JR.thisField "layerInterface") []) ])
        (jregister jheap)
        jthis
        jargs


jm_minX_0 : JR.Method
jm_minX_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.thisField "velocityInterface") []) []) (JR.long 0)) (JR.run [ 
                    JR.exec (JR.invoke "multiplyint_1" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.thisField "velocityInterface") []) [ (JR.map JR.neg (JR.int 1)) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_maxX_0 : JR.Method
jm_maxX_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.thisField "velocityInterface") []) []) (JR.long 0)) (JR.run [ 
                    JR.exec (JR.invoke "multiplyint_1" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.thisField "velocityInterface") []) [ (JR.map JR.neg (JR.int 1)) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_minY_0 : JR.Method
jm_minY_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []) []) (JR.long 0)) (JR.run [ 
                    JR.exec (JR.invoke "multiplyint_1" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []) [ (JR.map JR.neg (JR.int 1)) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_maxY_0 : JR.Method
jm_maxY_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getUnscaled_0" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []) []) (JR.long 0)) (JR.run [ 
                    JR.exec (JR.invoke "multiplyint_1" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.thisField "velocityInterface") []) [ (JR.map JR.neg (JR.int 1)) ]) ]) identity ])
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

