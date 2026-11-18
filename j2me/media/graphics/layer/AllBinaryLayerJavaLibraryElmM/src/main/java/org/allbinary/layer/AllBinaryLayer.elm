module Org.Allbinary.Layer.AllBinaryLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Game.Identification.BasicGroupFactory as BasicGroupFactory
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import JInteger
import Org.Allbinary.Layer.Layer as Layer
import Org.Allbinary.Layer.LayerInterface as LayerInterface
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil
import Org.Allbinary.Math.PositionStrings as PositionStrings
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil
import Org.Allbinary.View.ViewPositionBase as ViewPositionBase
import Org.Allbinary.View.Event.ViewPositionEvent as ViewPositionEvent


jclass : String
jclass =
    "AllBinaryLayer"


jchain : List String
jchain =
    [ "AllBinaryLayer" ]
        ++ Layer.jchain
        ++ LayerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Layer.jfields ++ [ ( "viewPositionEvent", JR.defaultOf "" ), ( "halfWidth", JR.defaultOf "I" ), ( "halfHeight", JR.defaultOf "I" ), ( "name", JR.defaultOf "" ), ( "viewPosition", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setPosition_3", jm_setPosition_3 )
        , ( "moveDXYZ_3", jm_moveDXYZ_3 )
        , ( "getXP_0", jm_getXP_0 )
        , ( "getYP_0", jm_getYP_0 )
        , ( "getZP_0", jm_getZP_0 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "setVisible_1", jm_setVisible_1 )
        , ( "isVisible_0", jm_isVisible_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "onChangeEvent_1", jm_onChangeEvent_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getX2_0", jm_getX2_0 )
        , ( "getY2_0", jm_getY2_0 )
        , ( "getZ2_0", jm_getZ2_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "setHalfWidth_1", jm_setHalfWidth_1 )
        , ( "getHalfWidth_0", jm_getHalfWidth_0 )
        , ( "setHalfHeight_1", jm_setHalfHeight_1 )
        , ( "getHalfHeight_0", jm_getHalfHeight_0 )
        , ( "getHalfDepth_0", jm_getHalfDepth_0 )
        , ( "getViewPosition_0", jm_getViewPosition_0 )
        , ( "setViewPosition_1", jm_setViewPosition_1 )
        , ( "getGroupInterface_0", jm_getGroupInterface_0 )
        , ( "implmentsTickableInterface_0", jm_implmentsTickableInterface_0 )
        , ( "implmentsGameInputInterface_0", jm_implmentsGameInputInterface_0 )
        , ( "implmentsArtificialIntelligenceCompositeInterface_0", jm_implmentsArtificialIntelligenceCompositeInterface_0 )
        , ( "implmentsCollidableInterface_0", jm_implmentsCollidableInterface_0 )
        , ( "implementsThreedInterface_0", jm_implementsThreedInterface_0 )
        , ( "getType_0", jm_getType_0 )
        , ( "getMultiPlayerType_0", jm_getMultiPlayerType_0 )
        , ( "toStringAppend_1", jm_toStringAppend_1 )
        , ( "toString_0", jm_toString_0 ) ]
        Layer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryLayer"
        [ ( "jm_setPosition_3", jm_setPosition_3 ), ( "jm_moveDXYZ_3", jm_moveDXYZ_3 ), ( "jm_getXP_0", jm_getXP_0 ), ( "jm_getYP_0", jm_getYP_0 ), ( "jm_getZP_0", jm_getZP_0 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_setVisible_1", jm_setVisible_1 ), ( "jm_isVisible_0", jm_isVisible_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_onChangeEvent_1", jm_onChangeEvent_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getX2_0", jm_getX2_0 ), ( "jm_getY2_0", jm_getY2_0 ), ( "jm_getZ2_0", jm_getZ2_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_setHalfWidth_1", jm_setHalfWidth_1 ), ( "jm_getHalfWidth_0", jm_getHalfWidth_0 ), ( "jm_setHalfHeight_1", jm_setHalfHeight_1 ), ( "jm_getHalfHeight_0", jm_getHalfHeight_0 ), ( "jm_getHalfDepth_0", jm_getHalfDepth_0 ), ( "jm_getViewPosition_0", jm_getViewPosition_0 ), ( "jm_setViewPosition_1", jm_setViewPosition_1 ), ( "jm_getGroupInterface_0", jm_getGroupInterface_0 ), ( "jm_implmentsTickableInterface_0", jm_implmentsTickableInterface_0 ), ( "jm_implmentsGameInputInterface_0", jm_implmentsGameInputInterface_0 ), ( "jm_implmentsArtificialIntelligenceCompositeInterface_0", jm_implmentsArtificialIntelligenceCompositeInterface_0 ), ( "jm_implmentsCollidableInterface_0", jm_implmentsCollidableInterface_0 ), ( "jm_implementsThreedInterface_0", jm_implementsThreedInterface_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_getMultiPlayerType_0", jm_getMultiPlayerType_0 ), ( "jm_toStringAppend_1", jm_toStringAppend_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_ALLBINARY_LAYER", jstatic_NULL_ALLBINARY_LAYER ), ( "jstatic_TYPE", jstatic_TYPE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ALLBINARY_LAYER : JR.M
jstatic_NULL_ALLBINARY_LAYER s =
    JR.static "AllBinaryLayer" jclinit "NULL_ALLBINARY_LAYER"
        (JR.new jnew_3 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), RectangleFactory.jstatic_SINGLETON, ViewPositionBase.jstatic_NULL_VIEW_POSITION ])
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "AllBinaryLayer" jclinit "TYPE"
        (JR.str "Type: ")
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "rectangle", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Layer.jinit_2 JR.this [ (JR.invoke "getWidth_0" (JR.local "rectangle") []), (JR.invoke "getHeight_0" (JR.local "rectangle") []) ]),
                JR.exec (JR.setField "viewPositionEvent" "" JR.this (JR.new ViewPositionEvent.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "viewPosition" "" JR.this ViewPositionBase.jstatic_NULL_VIEW_POSITION),
                identity,
                (JR.run [ 
                    JR.declare "localName" "" (JR.lit (JR.defaultOf "")), 
                    JR.exec (JR.setLocal "localName" "" (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "name") ]) [ (JR.field "COLON" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.callStatic JInteger.jm_toHexString_1 [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) ]) [])), 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "localName")), 
                    JR.declare "point" "" (JR.invoke "getPoint_0" (JR.local "rectangle") []), 
                    JR.exec (JR.invoke "setPosition_3" JR.this [ (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []), (JR.invoke "getZ_0" (JR.local "point") []) ]), 
                    JR.exec (JR.invoke "setHalfWidth_1" JR.this [ ((JR.map2 JR.shr (JR.invoke "getWidth_0" JR.this []) (JR.int 1))) ]), 
                    JR.exec (JR.invoke "setHalfHeight_1" JR.this [ ((JR.map2 JR.shr (JR.invoke "getHeight_0" JR.this []) (JR.int 1))) ]), 
                    JR.exec (JR.setField "viewPosition" "" JR.this (JR.local "viewPosition")), 
                    JR.exec (JR.invoke "setAllbinaryLayer_1" (JR.thisField "viewPosition") [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_setPosition_3 : JR.Method
jm_setPosition_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Layer.jvtable "setPosition_3" JR.this [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_moveDXYZ_3 : JR.Method
jm_moveDXYZ_3 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ), ( "dz", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Layer.jvtable "moveDXYZ_3" JR.this [ (JR.local "dx"), (JR.local "dy"), (JR.local "dz") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getXP_0 : JR.Method
jm_getXP_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Layer.jvtable "getXP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getYP_0 : JR.Method
jm_getYP_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Layer.jvtable "getYP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getZP_0 : JR.Method
jm_getZP_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Layer.jvtable "getZP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Layer.jvtable "getWidth_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Layer.jvtable "getHeight_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setVisible_1 : JR.Method
jm_setVisible_1 jheap jthis jargs =
    JR.method [ ( "visible", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Layer.jvtable "setVisible_1" JR.this [ (JR.local "visible") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isVisible_0 : JR.Method
jm_isVisible_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.callVia Layer.jvtable "isVisible_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Layer.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onChangeEvent_1 : JR.Method
jm_onChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "layerManagerEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getX2_0 : JR.Method
jm_getX2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.invoke "getXP_0" JR.this []) (JR.invoke "getWidth_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getY2_0 : JR.Method
jm_getY2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.add (JR.invoke "getYP_0" JR.this []) (JR.invoke "getHeight_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getZ2_0 : JR.Method
jm_getZ2_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.cast "I" ((JR.map2 JR.add (JR.cast "J" (JR.invoke "getZP_0" JR.this [])) (JR.invoke "getDepth_0" JR.this [])))) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_setHalfWidth_1 : JR.Method
jm_setHalfWidth_1 jheap jthis jargs =
    JR.method [ ( "halfWidth", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "halfWidth" "I" JR.this (JR.local "halfWidth")) ])
        (jregister jheap)
        jthis
        jargs


jm_getHalfWidth_0 : JR.Method
jm_getHalfWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "halfWidth") ])
        (jregister jheap)
        jthis
        jargs


jm_setHalfHeight_1 : JR.Method
jm_setHalfHeight_1 jheap jthis jargs =
    JR.method [ ( "halfHeight", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "halfHeight" "I" JR.this (JR.local "halfHeight")) ])
        (jregister jheap)
        jthis
        jargs


jm_getHalfHeight_0 : JR.Method
jm_getHalfHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "halfHeight") ])
        (jregister jheap)
        jthis
        jargs


jm_getHalfDepth_0 : JR.Method
jm_getHalfDepth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.cast "I" (JR.invoke "getDepth_0" JR.this [])) (JR.int 2)) ])
        (jregister jheap)
        jthis
        jargs


jm_getViewPosition_0 : JR.Method
jm_getViewPosition_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "viewPosition") ])
        (jregister jheap)
        jthis
        jargs


jm_setViewPosition_1 : JR.Method
jm_setViewPosition_1 jheap jthis jargs =
    JR.method [ ( "viewPosition", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "viewPosition" "" JR.this (JR.local "viewPosition")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGroupInterface_0 : JR.Method
jm_getGroupInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NONE_ARRAY" (JR.callStatic BasicGroupFactory.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsTickableInterface_0 : JR.Method
jm_implmentsTickableInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsGameInputInterface_0 : JR.Method
jm_implmentsGameInputInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsArtificialIntelligenceCompositeInterface_0 : JR.Method
jm_implmentsArtificialIntelligenceCompositeInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsCollidableInterface_0 : JR.Method
jm_implmentsCollidableInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_implementsThreedInterface_0 : JR.Method
jm_implementsThreedInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isAnyThreed_0" (JR.callStatic OpenGLFeatureUtil.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_getMultiPlayerType_0 : JR.Method
jm_getMultiPlayerType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAppend_1 : JR.Method
jm_toStringAppend_1 jheap jthis jargs =
    JR.method [ ( "stringBuffer", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "positionStrings" "" (JR.callStatic PositionStrings.jm_getInstance_0 []), 
                    JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COLON" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_TYPE ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getType_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "X_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getXP_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Y_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getYP_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Z_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getZP_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getWidth_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "getHeight_0" JR.this []) ]) ])
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

