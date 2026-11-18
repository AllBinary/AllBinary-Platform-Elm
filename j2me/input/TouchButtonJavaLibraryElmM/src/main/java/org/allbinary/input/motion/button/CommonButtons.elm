module Org.Allbinary.Input.Motion.Button.CommonButtons exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle


jclass : String
jclass =
    "CommonButtons"


jchain : List String
jchain =
    [ "CommonButtons" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "STANDARD_BUTTON_SIZE", JR.defaultOf "I" ), ( "NORMAL_BUTTON", JR.defaultOf "" ), ( "LARGE_BUTTON", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommonButtons"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CommonButtons" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "commonButtonSize" "I" (JR.int 128), 
                    JR.while (JR.map2 JR.greater (JR.local "commonButtonSize") (JR.int 64)) (JR.run [ 
                        JR.declare "totalColumns" "I" (JR.map2 JR.div (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []) (JR.local "commonButtonSize")), 
                        JR.declare "totalRows" "I" (JR.map2 JR.div (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.local "commonButtonSize")), 
                        JR.declare "max" "I" (JR.local "totalColumns"), 
                        JR.ifElse (JR.map2 JR.greater (JR.local "totalRows") (JR.local "max")) (JR.run [ 
                            JR.exec (JR.setLocal "max" "I" (JR.local "totalRows")) ]) identity, 
                        JR.ifElse (JR.map2 JR.greater (JR.local "max") (JR.int 9)) (JR.run [ 
                            JR.break ]) identity, 
                        JR.exec (JR.setLocal "commonButtonSize" "I" (JR.map2 JR.shr (JR.local "commonButtonSize") (JR.int 1))) ]), 
                    JR.exec (JR.setField "STANDARD_BUTTON_SIZE" "I" JR.this (JR.local "commonButtonSize")), 
                    JR.exec (JR.setField "NORMAL_BUTTON" "" JR.this (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.thisField "STANDARD_BUTTON_SIZE"), (JR.thisField "STANDARD_BUTTON_SIZE") ])), 
                    JR.exec (JR.setField "LARGE_BUTTON" "" JR.this (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.map2 JR.shl (JR.thisField "STANDARD_BUTTON_SIZE") (JR.int 1)), (JR.map2 JR.shl (JR.thisField "STANDARD_BUTTON_SIZE") (JR.int 1)) ])) ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

