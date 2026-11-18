module Org.Allbinary.Graphics.Form.Item.LimitCommandsVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Graphics.Form.ScreenInfo as ScreenInfo
import Org.Allbinary.Logic.Util.Visitor.Visitor as Visitor


jclass : String
jclass =
    "LimitCommandsVisitor"


jchain : List String
jchain =
    [ "LimitCommandsVisitor" ]
        ++ Visitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Visitor.jfields ++ [ ( "isNotSmallDisplay", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 ) ]
        Visitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LimitCommandsVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Visitor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.exec (JR.setField "isNotSmallDisplay" "Z" JR.this (JR.or ((JR.and (JR.invoke "isPortrait_0" (JR.local "displayInfo") []) (JR.map2 JR.greater (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.field "SMALL_WIDTH" (JR.callStatic ScreenInfo.jm_getInstance_0 []))))) ((JR.and (JR.map JR.not_ (JR.invoke "isPortrait_0" (JR.local "displayInfo") [])) (JR.map2 JR.greater (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.field "SMALL_HEIGHT" (JR.callStatic ScreenInfo.jm_getInstance_0 []))))))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.declare "command" "" (JR.local "anyType"), 
                    JR.declare "booleanFactory" "" (JR.callStatic BooleanFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.or (JR.or (JR.or (JR.thisField "isNotSmallDisplay") (JR.map2 JR.equals (JR.invoke "getPriority_0" (JR.local "command") []) (JR.int 1))) (JR.map2 JR.equals (JR.local "command") (JR.field "EXIT_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])))) (JR.map2 JR.equals (JR.local "command") (JR.field "EXIT_WITHOUT_PROGRESS_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])))) (JR.run [ 
                        JR.return (JR.field "TRUE" (JR.local "booleanFactory")) ]) (JR.run [ 
                        JR.return (JR.field "FALSE" (JR.local "booleanFactory")) ]) ])
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

