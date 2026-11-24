module Org.Allbinary.Animation.Image.BaseImageAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Image.AnimationFactoryImageScaleUtil as AnimationFactoryImageScaleUtil
import Org.Allbinary.Animation.Image.AnimationFactoryInitializationVisitor as AnimationFactoryInitializationVisitor
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Media.ScaleProperties as ScaleProperties
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BaseImageAnimationFactory"


jchain : List String
jchain =
    [ "BaseImageAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "animationFactoryImageScaleUtil", JR.defaultOf "" ), ( "image", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ), ( "sequenceArray", JR.defaultOf "" ), ( "animationFactoryInitializationVisitor", JR.defaultOf "" ), ( "scaleProperties", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createFactoryBase_5", jm_createFactoryBase_5 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getImage_0", jm_getImage_0 )
        , ( "getSequenceArray_0", jm_getSequenceArray_0 )
        , ( "setInitialScale_1", jm_setInitialScale_1 )
        , ( "getAnimationFactoryInitializationVisitorP_0", jm_getAnimationFactoryInitializationVisitorP_0 )
        , ( "getScalePropertiesP_0", jm_getScalePropertiesP_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseImageAnimationFactory"
        [ ( "jm_createFactoryBase_5", jm_createFactoryBase_5 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getImage_0", jm_getImage_0 ), ( "jm_getSequenceArray_0", jm_getSequenceArray_0 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jm_getAnimationFactoryInitializationVisitorP_0", jm_getAnimationFactoryInitializationVisitorP_0 ), ( "jm_getScalePropertiesP_0", jm_getScalePropertiesP_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "sequenceArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "animationFactoryImageScaleUtil" "" JR.this (JR.callStatic AnimationFactoryImageScaleUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "scaleProperties" "" JR.this ScaleProperties.jstatic_instance),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationFactoryInitializationVisitor" "" JR.this (JR.new AnimationFactoryInitializationVisitor.jnew_0 [])), 
                    JR.exec (JR.setField "image" "" JR.this (JR.local "image")), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN67533 -> (JR.setField "width" "I" (JR.lit jtN67533) (JR.local "width")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN67569 -> (JR.setField "height" "I" (JR.lit jtN67569) (JR.local "height")))), 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")), 
                    JR.exec (JR.setField "sequenceArray" "" JR.this (JR.local "sequenceArray")), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN67661 -> (JR.setField "dx" "I" (JR.lit jtN67661) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN67697 -> (JR.setField "dy" "I" (JR.lit jtN67697) (JR.local "dy")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createFactoryBase_5 : JR.Method
jm_createFactoryBase_5 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "sequenceArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "image"), (JR.local "sequenceArray"), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.local "instanceId") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getImage_0 : JR.Method
jm_getImage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "image") ])
        (jregister jheap)
        jthis
        jargs


jm_getSequenceArray_0 : JR.Method
jm_getSequenceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "sequenceArray") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "scaleProperties" "" JR.this (JR.local "scaleProperties")), 
                    JR.ifElse (JR.field "shouldScale" (JR.thisField "scaleProperties")) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "scaleProperties") (\jtN68193 -> (JR.setField "scaleWidth" "I" (JR.lit jtN68193) (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor"))) (JR.field "scaleX" (JR.thisField "scaleProperties")))))))), 
                        JR.exec (JR.andThen (JR.thisField "scaleProperties") (\jtN68276 -> (JR.setField "scaleHeight" "I" (JR.lit jtN68276) (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor"))) (JR.field "scaleY" (JR.thisField "scaleProperties")))))))) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationFactoryInitializationVisitorP_0 : JR.Method
jm_getAnimationFactoryInitializationVisitorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationFactoryInitializationVisitor") ])
        (jregister jheap)
        jthis
        jargs


jm_getScalePropertiesP_0 : JR.Method
jm_getScalePropertiesP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "scaleProperties") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callVia JR.noMethods "toString_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "getHeight_0" (JR.thisField "image") [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "animationFactoryInitializationVisitor") []) ]), 
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

