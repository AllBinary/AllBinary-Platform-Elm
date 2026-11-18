module Org.Allbinary.Media.DisplaysUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media
-}

import JR
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle


jclass : String
jclass =
    "DisplaysUtil"


jchain : List String
jchain =
    [ "DisplaysUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getPrimaryScreenSize_0", jm_getPrimaryScreenSize_0 )
        , ( "getScreenSizesAsRectangleArray_0", jm_getScreenSizesAsRectangleArray_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DisplaysUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getPrimaryScreenSize_0", jm_getPrimaryScreenSize_0 ), ( "jm_getScreenSizesAsRectangleArray_0", jm_getScreenSizesAsRectangleArray_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DisplaysUtil" jclinit "instance"
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


jm_getPrimaryScreenSize_0 : JR.Method
jm_getPrimaryScreenSize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "dimension" "" (JR.invoke "getScreenSize_0" (JR.callStatic (JR.namedMethod "Toolkit.jm_getDefaultToolkit_0") []) []), 
                    JR.return (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.field "width" (JR.local "dimension")), (JR.field "height" (JR.local "dimension")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getScreenSizesAsRectangleArray_0 : JR.Method
jm_getScreenSizesAsRectangleArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "graphicsEnvironment" "" (JR.callStatic (JR.namedMethod "GraphicsEnvironment.jm_getLocalGraphicsEnvironment_0") []), 
                    JR.declare "graphicsDeviceArray" "" (JR.invoke "getScreenDevices_0" (JR.local "graphicsEnvironment") []), 
                    JR.declare "graphicsDevice" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "displayMode" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "rectangle" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.alength (JR.local "graphicsDeviceArray")), 
                    JR.declare "rectangleArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66805 -> (JR.setLocal "index" "I" (JR.lit jwN66805))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "graphicsDevice" "" (JR.aget (JR.local "graphicsDeviceArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "displayMode" "" (JR.invoke "getDisplayMode_0" (JR.local "graphicsDevice") [])), 
                        JR.exec (JR.setLocal "rectangle" "" (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.invoke "getWidth_0" (JR.local "displayMode") []), (JR.invoke "getHeight_0" (JR.local "displayMode") []) ])), 
                        JR.exec (JR.andThen (JR.local "rectangleArray") (\jaN66720 -> JR.andThen (JR.local "index") (\jiN66720 -> (JR.aset (JR.lit jaN66720) (JR.lit jiN66720) (JR.local "rectangle"))))) ]) ], 
                    JR.return (JR.local "rectangleArray") ])
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

