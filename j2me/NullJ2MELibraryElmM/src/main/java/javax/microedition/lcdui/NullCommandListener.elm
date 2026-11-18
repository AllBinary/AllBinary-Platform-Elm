module Javax.Microedition.Lcdui.NullCommandListener exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.lcdui
-}

import JR
import Javax.Microedition.Lcdui.CommandListener as CommandListener


jclass : String
jclass =
    "NullCommandListener"


jchain : List String
jchain =
    [ "NullCommandListener" ]
        ++ CommandListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "commandAction_2", jm_commandAction_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullCommandListener"
        [ ( "jm_commandAction_2", jm_commandAction_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_COMMAND_LISTENER", jstatic_NULL_COMMAND_LISTENER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COMMAND_LISTENER : JR.M
jstatic_NULL_COMMAND_LISTENER s =
    JR.static "NullCommandListener" jclinit "NULL_COMMAND_LISTENER"
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


jm_commandAction_2 : JR.Method
jm_commandAction_2 jheap jthis jargs =
    JR.method [ ( "c", "" ), ( "d", "" ) ] ""
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

