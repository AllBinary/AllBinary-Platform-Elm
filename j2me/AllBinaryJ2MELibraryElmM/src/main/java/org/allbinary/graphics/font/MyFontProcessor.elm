module Org.Allbinary.Graphics.Font.MyFontProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.font
-}

import JR



jclass : String
jclass =
    "MyFontProcessor"


jchain : List String
jchain =
    [ "MyFontProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "defaultCharWidth_1", jm_defaultCharWidth_1 )
        , ( "defaultStringWidth_2", jm_defaultStringWidth_2 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "process_1", jm_process_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MyFontProcessor"
        [ ( "jm_defaultCharWidth_1", jm_defaultCharWidth_1 ), ( "jm_defaultStringWidth_2", jm_defaultStringWidth_2 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MyFontProcessor" jclinit "instance"
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


jm_defaultCharWidth_1 : JR.Method
jm_defaultCharWidth_1 jheap jthis jargs =
    JR.method [ ( "font", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "charWidth_1" (JR.local "font") [ (JR.char 67) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_defaultStringWidth_2 : JR.Method
jm_defaultStringWidth_2 jheap jthis jargs =
    JR.method [ ( "font", "" ), ( "size", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.mul (JR.callStatic jm_defaultCharWidth_1 [ (JR.local "font") ]) (JR.local "size")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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

