module Org.Allbinary.Graphics.Displayable.Screen.WebCommandProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR
import Org.Allbinary.Graphics.Displayable.Screen.AboutCommandProcessor as AboutCommandProcessor
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "WebCommandProcessor"


jchain : List String
jchain =
    [ "WebCommandProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "aboutCommandProcessor", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_3", jm_process_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WebCommandProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_3", jm_process_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "WebCommandProcessor" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "aboutCommandProcessor" "" JR.this (JR.callStatic AboutCommandProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "midletCommandListener", "" ), ( "command", "" ), ( "canvas", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.and (JR.callStatic (JR.namedMethod "Desktop.jm_isDesktopSupported_0") []) (JR.invoke "isSupported_1" (JR.callStatic (JR.namedMethod "Desktop.jm_getDesktop_0") []) [ (JR.field "BROWSE" (JR.namedStatic "Desktop.jstatic_Action")) ])) (JR.run [ 
                            JR.exec (JR.invoke "browse_1" (JR.callStatic (JR.namedMethod "Desktop.jm_getDesktop_0") []) [ (JR.new (JR.namedMethod "URI.jnew_1") [ (JR.invoke "removeAt_1" (JR.thisField "list") [ (JR.int 0) ]) ]) ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "PROCESS" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

