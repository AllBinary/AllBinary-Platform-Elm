module Org.Allbinary.Game.Layer.Resources.GameGraphicsResourceUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.resources
-}

import JR
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GraphicsFeatureFactory as GraphicsFeatureFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameGraphicsResourceUtil"


jchain : List String
jchain =
    [ "GameGraphicsResourceUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "SPRITE", JR.defaultOf "" ), ( "QUARTER", JR.defaultOf "" ), ( "name", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getString_0", jm_getString_0 )
        , ( "getStringForFeature_1", jm_getStringForFeature_1 )
        , ( "getName_0", jm_getName_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameGraphicsResourceUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getString_0", jm_getString_0 ), ( "jm_getStringForFeature_1", jm_getStringForFeature_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameGraphicsResourceUtil" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "SPRITE" "" JR.this (JR.str "_sprite")),
                JR.exec (JR.setField "QUARTER" "" JR.this (JR.str "_quarter")),
                JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setField "name" "" JR.this (JR.invoke "getString_0" JR.this [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GameGraphicsResourceUtil.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getString_0 : JR.Method
jm_getString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "graphicsFeatureFactory" "" (JR.callStatic GraphicsFeatureFactory.jm_getInstance_0 []), 
                    JR.declare "graphicsFeature" "" (JR.field "NONE" (JR.local "graphicsFeatureFactory")), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_TO_ARRAY_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.setLocal "graphicsFeature" "" (JR.field "IMAGE_TO_ARRAY_GRAPHICS" (JR.local "graphicsFeatureFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SPRITE_FULL_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.setLocal "graphicsFeature" "" (JR.field "SPRITE_FULL_GRAPHICS" (JR.local "graphicsFeatureFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SPRITE_QUARTER_ROTATION_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.setLocal "graphicsFeature" "" (JR.field "SPRITE_QUARTER_ROTATION_GRAPHICS" (JR.local "graphicsFeatureFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_ROTATION_ON_THE_FLY" (JR.local "graphicsFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.setLocal "graphicsFeature" "" (JR.field "IMAGE_ROTATION_ON_THE_FLY" (JR.local "graphicsFeatureFactory"))) ]) identity ]) ]) ]), 
                    JR.return (JR.invoke "getStringForFeature_1" JR.this [ (JR.local "graphicsFeature") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getStringForFeature_1 : JR.Method
jm_getStringForFeature_1 jheap jthis jargs =
    JR.method [ ( "graphicsFeature", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "graphicsFeatureFactory" "" (JR.callStatic GraphicsFeatureFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "VECTOR_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) identity (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "graphicsFeature") (JR.field "IMAGE_TO_ARRAY_GRAPHICS" (JR.local "graphicsFeatureFactory"))) (JR.map2 JR.equals (JR.local "graphicsFeature") (JR.field "IMAGE_ROTATION_ON_THE_FLY" (JR.local "graphicsFeatureFactory")))) identity (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "graphicsFeature") (JR.field "SPRITE_FULL_GRAPHICS" (JR.local "graphicsFeatureFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SPRITE") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "graphicsFeature") (JR.field "SPRITE_QUARTER_ROTATION_GRAPHICS" (JR.local "graphicsFeatureFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "QUARTER") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SPRITE") ]) ]) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "None/Unknown Sub Image Resource Type Specified") ]) ]) ]) ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isAnyThreed_0" (JR.callStatic OpenGLFeatureUtil.jm_getInstance_0 []) []) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "OBJ_MODEL" (JR.callStatic CanvasStrings.jm_getInstance_0 [])) ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "None/Unknown Main Image Resource Type Specified") ]) ]) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

