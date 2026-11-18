module Org.Allbinary.Game.Layer.CollidableCompositeLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Game.Layer.AllBinaryGameLayer as AllBinaryGameLayer
import Org.Allbinary.Ai.ArtificialIntelligence as ArtificialIntelligence
import Org.Allbinary.Game.Collision.CollidableInterfaceCompositeInterface as CollidableInterfaceCompositeInterface
import Org.Allbinary.Game.Collision.CollidableNeverCollideBehaviorFactory as CollidableNeverCollideBehaviorFactory
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.View.ViewPositionBase as ViewPositionBase


jclass : String
jclass =
    "CollidableCompositeLayer"


jchain : List String
jchain =
    [ "CollidableCompositeLayer" ]
        ++ AllBinaryGameLayer.jchain
        ++ CollidableInterfaceCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryGameLayer.jfields ++ [ ( "collidableInferface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "getArtificialIntelligenceInterface_0", jm_getArtificialIntelligenceInterface_0 )
        , ( "getCollidableInferface_0", jm_getCollidableInferface_0 )
        , ( "setCollidableInferface_1", jm_setCollidableInferface_1 )
        , ( "implmentsCollidableInterface_0", jm_implmentsCollidableInterface_0 )
        , ( "toStringAppend_1", jm_toStringAppend_1 )
        , ( "toString_0", jm_toString_0 ) ]
        AllBinaryGameLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableCompositeLayer"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_getArtificialIntelligenceInterface_0", jm_getArtificialIntelligenceInterface_0 ), ( "jm_getCollidableInferface_0", jm_getCollidableInferface_0 ), ( "jm_setCollidableInferface_1", jm_setCollidableInferface_1 ), ( "jm_implmentsCollidableInterface_0", jm_implmentsCollidableInterface_0 ), ( "jm_toStringAppend_1", jm_toStringAppend_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER", jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER : JR.M
jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER s =
    JR.static "CollidableCompositeLayer" jclinit "NULL_COLLIDABLE_COMPOSITE_LAYER"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "layerInfo", "" ), ( "viewPosition", "" ), ( "collidableBaseBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryGameLayer.jinit_3 JR.this [ (JR.local "name"), (JR.local "layerInfo"), (JR.local "viewPosition") ]),
                JR.exec (JR.setField "collidableInferface" "" JR.this (JR.invoke "createBehavior_0" (JR.callStatic CollidableNeverCollideBehaviorFactory.jm_getInstance_0 []) [])),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "collidableBaseBehaviorFactory") (JR.callStatic CollidableNeverCollideBehaviorFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "setCollidableInferface_1" JR.this [ (JR.invoke "createBehavior_0" (JR.local "collidableBaseBehaviorFactory") []) ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER" "" (JR.new jnew_4 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), RectangleFactory.jstatic_SINGLETON, ViewPositionBase.jstatic_NULL_VIEW_POSITION, (JR.callStatic CollidableNeverCollideBehaviorFactory.jm_getInstance_0 []) ])) ]) identity, 
                    JR.return jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER ])
        (jregister jheap)
        jthis
        jargs


jm_getArtificialIntelligenceInterface_0 : JR.Method
jm_getArtificialIntelligenceInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]), 
                    JR.return (JR.callStatic ArtificialIntelligence.jm_getInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_getCollidableInferface_0 : JR.Method
jm_getCollidableInferface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "collidableInferface") ])
        (jregister jheap)
        jthis
        jargs


jm_setCollidableInferface_1 : JR.Method
jm_setCollidableInferface_1 jheap jthis jargs =
    JR.method [ ( "collidableInferface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "collidableInferface" "" JR.this (JR.local "collidableInferface")) ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsCollidableInterface_0 : JR.Method
jm_implmentsCollidableInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAppend_1 : JR.Method
jm_toStringAppend_1 jheap jthis jargs =
    JR.method [ ( "stringBuffer", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.callVia AllBinaryGameLayer.jvtable "toStringAppend_1" JR.this [ (JR.local "stringBuffer") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.invoke "getCollidableInferface_0" JR.this []) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "toStringAppend_1" JR.this [ (JR.local "stringBuffer") ]), 
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

