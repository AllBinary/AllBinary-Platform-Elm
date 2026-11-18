module Org.Allbinary.Image.AnimationFrameToImageUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.Image.GameFeatureImageCacheFactory as GameFeatureImageCacheFactory


jclass : String
jclass =
    "AnimationFrameToImageUtil"


jchain : List String
jchain =
    [ "AnimationFrameToImageUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceTranslate_3", jm_getInstanceTranslate_3 )
        , ( "getInstanceWH_3", jm_getInstanceWH_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnimationFrameToImageUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceTranslate_3", jm_getInstanceTranslate_3 ), ( "jm_getInstanceWH_3", jm_getInstanceWH_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AnimationFrameToImageUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_getInstanceTranslate_3 : JR.Method
jm_getInstanceTranslate_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "get_3" (JR.callStatic GameFeatureImageCacheFactory.jm_getInstance_0 []) [ (JR.invoke "getName_0" (JR.getClass jstatic_instance) []), ((JR.map2 JR.shr ((JR.map2 JR.mul (JR.local "width") (JR.int 3))) (JR.int 1))), ((JR.map2 JR.shr ((JR.map2 JR.mul (JR.local "height") (JR.int 3))) (JR.int 1))) ]), 
                    JR.declare "graphics" "" (JR.invoke "getGraphics_0" (JR.local "image") []), 
                    JR.declare "tranlateX" "I" ((JR.map2 JR.shr (JR.local "width") (JR.int 2))), 
                    JR.declare "tranlateY" "I" ((JR.map2 JR.shr (JR.local "height") (JR.int 2))), 
                    JR.exec (JR.invoke "translate_2" (JR.local "graphics") [ (JR.local "tranlateX"), (JR.local "tranlateY") ]), 
                    JR.exec (JR.invoke "paintXY_3" (JR.local "animationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0) ]), 
                    JR.exec (JR.invoke "translate_2" (JR.local "graphics") [ (JR.map JR.neg (JR.local "tranlateX")), (JR.map JR.neg (JR.local "tranlateY")) ]), 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceWH_3 : JR.Method
jm_getInstanceWH_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "get_3" (JR.callStatic GameFeatureImageCacheFactory.jm_getInstance_0 []) [ (JR.invoke "getName_0" (JR.getClass jstatic_instance) []), (JR.local "width"), (JR.local "height") ]), 
                    JR.declare "graphics" "" (JR.invoke "getGraphics_0" (JR.local "image") []), 
                    JR.exec (JR.invoke "paintXY_3" (JR.local "animationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0) ]), 
                    JR.return (JR.local "image") ])
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

