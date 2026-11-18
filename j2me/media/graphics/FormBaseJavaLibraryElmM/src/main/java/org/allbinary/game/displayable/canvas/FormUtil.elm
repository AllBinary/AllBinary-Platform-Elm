module Org.Allbinary.Game.Displayable.Canvas.FormUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle


jclass : String
jclass =
    "FormUtil"


jchain : List String
jchain =
    [ "FormUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createFormRectangle_0", jm_createFormRectangle_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FormUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createFormRectangle_0", jm_createFormRectangle_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FormUtil" jclinit "instance"
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


jm_createFormRectangle_0 : JR.Method
jm_createFormRectangle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "rectangle" "" (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.int 30), (JR.int 10) ]), (JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []) (JR.int 30)), (JR.map2 JR.sub (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.int 35)) ]), 
                    JR.return (JR.local "rectangle") ])
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

