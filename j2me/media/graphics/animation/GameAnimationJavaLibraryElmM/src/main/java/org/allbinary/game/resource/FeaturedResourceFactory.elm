module Org.Allbinary.Game.Resource.FeaturedResourceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.resource
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GraphicsFeatureFactory as GraphicsFeatureFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "FeaturedResourceFactory"


jchain : List String
jchain =
    [ "FeaturedResourceFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "ANIMATION_FEATURES", JR.defaultOf "" ), ( "IMAGE_LABEL", JR.defaultOf "" ), ( "IMAGE_GRAPHICS_ARRAY", JR.defaultOf "" ), ( "IMAGE_GRAPHICS_ROTATION", JR.defaultOf "" ), ( "SPRITE_QUARTER", JR.defaultOf "" ), ( "SPRITE_FULL", JR.defaultOf "" ), ( "IS_LOADING_LEVEL_LABEL", JR.defaultOf "" ), ( "IS_FEATURE", JR.defaultOf "" ), ( "GAME_FEATURE_CONTROLLED", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "clear_0", jm_clear_0 )
        , ( "add_1", jm_add_1 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FeaturedResourceFactory"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "ANIMATION_FEATURES" "" JR.this (JR.str "Animation Features: Vector: ")),
                JR.exec (JR.setField "IMAGE_LABEL" "" JR.this (JR.str " Image: ")),
                JR.exec (JR.setField "IMAGE_GRAPHICS_ARRAY" "" JR.this (JR.str "Image Array: ")),
                JR.exec (JR.setField "IMAGE_GRAPHICS_ROTATION" "" JR.this (JR.str "Image Rotate: ")),
                JR.exec (JR.setField "SPRITE_QUARTER" "" JR.this (JR.str " Sprite Quarter: ")),
                JR.exec (JR.setField "SPRITE_FULL" "" JR.this (JR.str " Sprite Full: ")),
                JR.exec (JR.setField "IS_LOADING_LEVEL_LABEL" "" JR.this (JR.str " isLoadingLevel ")),
                JR.exec (JR.setField "IS_FEATURE" "" JR.this (JR.str " isFeature: ")),
                JR.exec (JR.setField "GAME_FEATURE_CONTROLLED" "" JR.this (JR.str "GameFeatureControlledInterface: ")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68621 -> (JR.setLocal "index" "I" (JR.lit jwN68621))) JR.increment) ]) (JR.run [ 
                        JR.declare "featureInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")), 
                        JR.declare "isLoadingLevel" "Z" (JR.invoke "isLoadingLevel_1" (JR.local "featureInterface") [ (JR.local "level") ]), 
                        JR.declare "isFeature" "Z" (JR.invoke "isFeature_0" (JR.local "featureInterface") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "GAME_FEATURE_CONTROLLED") ]) [ (JR.invoke "toString_0" (JR.local "featureInterface") []) ]) [ (JR.thisField "IS_LOADING_LEVEL_LABEL") ]) [ (JR.invoke "getLevelString_1" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []) [ (JR.local "level") ]) ]) [ (JR.field "COLON_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.local "isLoadingLevel") ]) [ (JR.thisField "IS_FEATURE") ]) [ (JR.local "isFeature") ]) []), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                        JR.ifElse (JR.and (JR.local "isLoadingLevel") (JR.local "isFeature")) (JR.run [ 
                            JR.exec (JR.invoke "init_1" (JR.local "featureInterface") [ (JR.local "level") ]) ]) identity ]) ], 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "graphicsFeatureFactory" "" (JR.callStatic GraphicsFeatureFactory.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "ANIMATION_FEATURES") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "VECTOR_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "IMAGE_LABEL") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "IMAGE_GRAPHICS_ARRAY") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_TO_ARRAY_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "IMAGE_GRAPHICS_ROTATION") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "IMAGE_TO_ARRAY_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SPRITE_QUARTER") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SPRITE_QUARTER_ROTATION_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SPRITE_FULL") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SPRITE_FULL_GRAPHICS" (JR.local "graphicsFeatureFactory")) ]) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "featureInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "featureInterface") ]) ]) []), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "featureInterface") ]) ])
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

