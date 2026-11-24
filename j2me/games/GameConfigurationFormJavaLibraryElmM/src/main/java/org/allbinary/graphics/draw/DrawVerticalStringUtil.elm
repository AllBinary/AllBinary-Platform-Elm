module Org.Allbinary.Graphics.Draw.DrawVerticalStringUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.draw
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.AndroidUtil as AndroidUtil
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "DrawVerticalStringUtil"


jchain : List String
jchain =
    [ "DrawVerticalStringUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EMPTY_STRING", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ), ( "charHeight", JR.defaultOf "I" ), ( "offsetY", JR.defaultOf "I" ), ( "offsetXArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "updateMeasurement_2", jm_updateMeasurement_2 )
        , ( "paintVerticle_5", jm_paintVerticle_5 )
        , ( "drawCenterString_6", jm_drawCenterString_6 )
        , ( "drawCenterStrings_5", jm_drawCenterStrings_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DrawVerticalStringUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_updateMeasurement_2", jm_updateMeasurement_2 ), ( "jm_paintVerticle_5", jm_paintVerticle_5 ), ( "jm_drawCenterString_6", jm_drawCenterString_6 ), ( "jm_drawCenterStrings_5", jm_drawCenterStrings_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DrawVerticalStringUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                JR.exec (JR.setField "offsetXArray" "" JR.this (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
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


jm_updateMeasurement_2 : JR.Method
jm_updateMeasurement_2 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ) ] ""
        (JR.run [ 
                    JR.declare "openGLFeatureUtil" "" (JR.callStatic OpenGLFeatureUtil.jm_getInstance_0 []), 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "charHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "offsetY" "I" JR.this (JR.int 0)), 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                        JR.exec (JR.setField "charHeight" "I" JR.this (JR.map2 JR.add (JR.thisField "charHeight") (JR.int 1))) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isAnyThreed_0" (JR.local "openGLFeatureUtil") []) (JR.run [ 
                        JR.exec (JR.setField "charHeight" "I" JR.this (JR.map2 JR.add (JR.thisField "charHeight") (JR.int 2))), 
                        JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) identity (JR.run [ 
                            JR.exec (JR.setField "offsetY" "I" JR.this (JR.map2 JR.add (JR.int 2) ((JR.map2 JR.div (JR.map2 JR.mul (JR.thisField "charHeight") (JR.int 2)) (JR.int 3))))) ]) ]) identity ]), 
                    JR.declare "size" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.declare "aChar" "C" (JR.lit (JR.defaultOf "C")), 
                    JR.declare "offsetXArray" "" (JR.newArray "I" [ (JR.local "size") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67315 -> (JR.setLocal "index" "I" (JR.lit jwN67315))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "aChar" "C" (JR.invoke "charAt_1" (JR.local "string") [ (JR.local "index") ])), 
                        JR.ifElse (JR.invoke "isAnyThreed_0" (JR.local "openGLFeatureUtil") []) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "offsetXArray") (\jaN67190 -> JR.andThen (JR.local "index") (\jiN67190 -> (JR.aset (JR.lit jaN67190) (JR.lit jiN67190) (JR.map2 JR.div (JR.invoke "charWidth_1" (JR.local "font") [ (JR.local "aChar") ]) (JR.int 2)))))) ]) identity ]) ], 
                    JR.exec (JR.setField "offsetXArray" "" JR.this (JR.local "offsetXArray")) ])
        (jregister jheap)
        jthis
        jargs


jm_paintVerticle_5 : JR.Method
jm_paintVerticle_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ), ( "x", "I" ), ( "y", "I" ), ( "anchor", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.declare "aChar" "C" (JR.lit (JR.defaultOf "C")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67747 -> (JR.setLocal "index" "I" (JR.lit jwN67747))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "aChar" "C" (JR.invoke "charAt_1" (JR.local "string") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "drawChar_4" (JR.local "graphics") [ (JR.local "aChar"), (JR.map2 JR.add (JR.local "x") (JR.aget (JR.thisField "offsetXArray") (JR.local "index"))), (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") ((JR.map2 JR.mul (JR.thisField "charHeight") (JR.local "index")))) (JR.thisField "offsetY")), (JR.local "anchor") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_drawCenterString_6 : JR.Method
jm_drawCenterString_6 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ), ( "offset", "I" ), ( "length", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "width" "I" ((JR.map2 JR.shr (JR.invoke "substringWidth_3" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.local "string"), (JR.local "offset"), (JR.local "length") ]) (JR.int 1))), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "drawSubstring_6" (JR.local "graphics") [ (JR.local "string"), (JR.local "offset"), (JR.local "length"), (JR.map2 JR.sub (JR.local "x") (JR.local "width")), (JR.local "y"), (JR.thisField "anchor") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Exception: stringLength: ") ]) [ (JR.invoke "length_0" (JR.local "string") []) ]) [ (JR.str " offset: ") ]) [ (JR.local "offset") ]) [ (JR.str " currentLength: ") ]) [ (JR.local "length") ]) []), JR.this, (JR.str "drawCenterString") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_drawCenterStrings_5 : JR.Method
jm_drawCenterStrings_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "stringArray", "" ), ( "maxWidth", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "extraLines" "I" (JR.int 0), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "stringArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69454 -> (JR.setLocal "index" "I" (JR.lit jwN69454))) JR.increment) ]) (JR.run [ 
                        JR.declare "string" "" (JR.aget (JR.local "stringArray") (JR.local "index")), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "string") (JR.thisField "EMPTY_STRING")) (JR.run [ 
                            JR.declare "width" "I" (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.local "string") ]), 
                            JR.declare "minTotalLines" "I" (JR.int 1), 
                            JR.ifElse (JR.map2 JR.greater (JR.local "width") (JR.local "maxWidth")) (JR.run [ 
                                JR.exec (JR.setLocal "minTotalLines" "I" (JR.map2 JR.add ((JR.map2 JR.div (JR.local "width") (JR.local "maxWidth"))) (JR.int 1))) ]) identity, 
                            JR.declare "linePortion" "I" (JR.map2 JR.div (JR.invoke "length_0" (JR.local "string") []) (JR.local "minTotalLines")), 
                            JR.declare "offset" "I" (JR.int 0), 
                            JR.declare "currentLength" "I" (JR.local "linePortion"), 
                            JR.declare "size" "I" (JR.invoke "length_0" (JR.local "string") []), 
                            JR.while (JR.map2 JR.less (JR.local "offset") (JR.local "size")) (JR.run [ 
                                JR.ifElse (JR.map2 JR.greater (JR.map2 JR.add (JR.local "offset") (JR.local "currentLength")) (JR.local "size")) (JR.run [ 
                                    JR.exec (JR.setLocal "currentLength" "I" (JR.map2 JR.sub (JR.local "size") (JR.local "offset"))) ]) identity, 
                                JR.ifElse (JR.map2 JR.notEquals (JR.map2 JR.add (JR.local "offset") (JR.local "currentLength")) (JR.local "size")) (JR.run [ 
                                    JR.while (JR.and (JR.map2 JR.greater (JR.local "currentLength") (JR.int 0)) (JR.map2 JR.notEquals (JR.invoke "charAt_1" (JR.aget (JR.local "stringArray") (JR.local "index")) [ (JR.map2 JR.add (JR.local "offset") (JR.local "currentLength")) ]) (JR.char 32))) (JR.run [ 
                                        JR.exec (JR.postUpdate (JR.local "currentLength") (\jwN69003 -> (JR.setLocal "currentLength" "I" (JR.lit jwN69003))) JR.decrement) ]), 
                                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "currentLength") (JR.int 4)) (JR.run [ 
                                        JR.exec (JR.setLocal "currentLength" "I" (JR.local "linePortion")) ]) identity ]) identity, 
                                JR.exec (JR.invoke "drawCenterString_6" JR.this [ (JR.local "graphics"), (JR.local "string"), (JR.local "offset"), (JR.local "currentLength"), (JR.local "x"), (JR.map2 JR.add (JR.local "y") ((JR.map2 JR.mul ((JR.map2 JR.add (JR.local "index") (JR.postUpdate (JR.local "extraLines") (\jwN69252 -> (JR.setLocal "extraLines" "I" (JR.lit jwN69252))) JR.increment))) (JR.thisField "charHeight")))) ]), 
                                JR.exec (JR.setLocal "offset" "I" (JR.map2 JR.add (JR.local "offset") (JR.local "currentLength"))), 
                                JR.exec (JR.setLocal "currentLength" "I" (JR.local "linePortion")) ]), 
                            JR.exec (JR.postUpdate (JR.local "extraLines") (\jwN69378 -> (JR.setLocal "extraLines" "I" (JR.lit jwN69378))) JR.decrement) ]) identity ]) ] ])
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

