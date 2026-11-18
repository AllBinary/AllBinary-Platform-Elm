module Org.Allbinary.Animation.FillAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation


jclass : String
jclass =
    "FillAnimation"


jchain : List String
jchain =
    [ "FillAnimation" ]
        ++ IndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "pixelBuffer", JR.defaultOf "" ), ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "changeBasicColor_1", jm_changeBasicColor_1 )
        , ( "setAlpha_1", jm_setAlpha_1 )
        , ( "setScale_2", jm_setScale_2 )
        , ( "setMaxScale_2", jm_setMaxScale_2 )
        , ( "updateModifiers_0", jm_updateModifiers_0 )
        , ( "paint_1", jm_paint_1 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FillAnimation"
        [ ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_changeBasicColor_1", jm_changeBasicColor_1 ), ( "jm_setAlpha_1", jm_setAlpha_1 ), ( "jm_setScale_2", jm_setScale_2 ), ( "jm_setMaxScale_2", jm_setMaxScale_2 ), ( "jm_updateModifiers_0", jm_updateModifiers_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "pixelBuffer", "" ), ( "width", "I" ), ( "height", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "width" "I" JR.this (JR.int 100)), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.int 100)), 
                    JR.exec (JR.setField "pixelBuffer" "" JR.this (JR.local "pixelBuffer")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getBasicColorP_0" JR.this []) JR.null) (JR.map2 JR.notEquals (JR.invoke "intValue_0" (JR.invoke "getBasicColorP_0" JR.this []) []) (JR.invoke "intValue_0" (JR.local "basicColor") []))) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia IndexedAnimation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.invoke "updateModifiers_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_changeBasicColor_1 : JR.Method
jm_changeBasicColor_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getChangeBasicColor_0" JR.this []) JR.null) (JR.map2 JR.notEquals (JR.invoke "intValue_0" (JR.invoke "getChangeBasicColor_0" JR.this []) []) (JR.invoke "intValue_0" (JR.local "basicColor") []))) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia IndexedAnimation.jvtable "changeBasicColor_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.invoke "updateModifiers_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setAlpha_1 : JR.Method
jm_setAlpha_1 jheap jthis jargs =
    JR.method [ ( "alpha", "I" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "alphaP") (JR.local "alpha")) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia IndexedAnimation.jvtable "setAlpha_1" JR.this [ (JR.local "alpha") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.invoke "updateModifiers_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setScale_2 : JR.Method
jm_setScale_2 jheap jthis jargs =
    JR.method [ ( "scaleX", "F" ), ( "scaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setMaxScale_2 : JR.Method
jm_setMaxScale_2 jheap jthis jargs =
    JR.method [ ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_updateModifiers_0 : JR.Method
jm_updateModifiers_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "g", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drawRGB_8" (JR.local "g") [ (JR.thisField "pixelBuffer"), (JR.int 0), (JR.thisField "width"), (JR.int 0), (JR.int 0), (JR.thisField "width"), (JR.thisField "height"), (JR.bool True) ]) ])
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

