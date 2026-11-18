module Org.Allbinary.Graphics.Displayable.ScreenRelationalUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton


jclass : String
jclass =
    "ScreenRelationalUtil"


jchain : List String
jchain =
    [ "ScreenRelationalUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getScaleImage_1", jm_getScaleImage_1 )
        , ( "getScaleWH_2", jm_getScaleWH_2 )
        , ( "getScaleWHA_3", jm_getScaleWHA_3 )
        , ( "getScaledHeight_2", jm_getScaledHeight_2 )
        , ( "getScaledHeightAdd_3", jm_getScaledHeightAdd_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenRelationalUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getScaleImage_1", jm_getScaleImage_1 ), ( "jm_getScaleWH_2", jm_getScaleWH_2 ), ( "jm_getScaleWHA_3", jm_getScaleWHA_3 ), ( "jm_getScaledHeight_2", jm_getScaledHeight_2 ), ( "jm_getScaledHeightAdd_3", jm_getScaledHeightAdd_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ScreenRelationalUtil" jclinit "instance"
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


jm_getScaleImage_1 : JR.Method
jm_getScaleImage_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] "F"
        (JR.run [ 
                    JR.return (JR.invoke "getScaleWH_2" JR.this [ (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getScaleWH_2 : JR.Method
jm_getScaleWH_2 jheap jthis jargs =
    JR.method [ ( "aWidth", "I" ), ( "aHeight", "I" ) ] "F"
        (JR.run [ 
                    JR.return (JR.invoke "getScaleWHA_3" JR.this [ (JR.local "aWidth"), (JR.local "aHeight"), (JR.int 20) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getScaleWHA_3 : JR.Method
jm_getScaleWHA_3 jheap jthis jargs =
    JR.method [ ( "aWidth", "I" ), ( "aHeight", "I" ), ( "add", "I" ) ] "F"
        (JR.run [ 
                    JR.declare "displayInfoSingleton" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "last" "" (JR.invoke "getLast_0" (JR.local "displayInfoSingleton") []), 
                    JR.declare "width" "F" (JR.cast "F" (JR.aget (JR.local "last") (JR.field "WIDTH" (JR.local "displayInfoSingleton")))), 
                    JR.declare "height" "F" (JR.cast "F" (JR.aget (JR.local "last") (JR.field "HEIGHT" (JR.local "displayInfoSingleton")))), 
                    JR.declare "largestSize" "F" (JR.local "width"), 
                    JR.ifElse (JR.map2 JR.less (JR.local "largestSize") (JR.local "height")) (JR.run [ 
                        JR.exec (JR.setLocal "largestSize" "F" (JR.local "height")) ]) identity, 
                    JR.declare "scale" "F" (JR.map2 JR.div ((JR.local "largestSize")) (JR.cast "F" (JR.local "aWidth"))), 
                    JR.return (JR.local "scale") ])
        (jregister jheap)
        jthis
        jargs


jm_getScaledHeight_2 : JR.Method
jm_getScaledHeight_2 jheap jthis jargs =
    JR.method [ ( "aWidth", "I" ), ( "aHeight", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.cast "I" ((JR.map2 JR.mul (JR.invoke "getScaleWH_2" JR.this [ (JR.local "aWidth"), (JR.local "aHeight") ]) (JR.cast "F" (JR.local "aHeight"))))) ])
        (jregister jheap)
        jthis
        jargs


jm_getScaledHeightAdd_3 : JR.Method
jm_getScaledHeightAdd_3 jheap jthis jargs =
    JR.method [ ( "aWidth", "I" ), ( "aHeight", "I" ), ( "add", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.cast "I" ((JR.map2 JR.mul (JR.invoke "getScaleWHA_3" JR.this [ (JR.local "aWidth"), (JR.local "aHeight"), (JR.local "add") ]) (JR.cast "F" (JR.local "aHeight"))))) ])
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

