module Org.Allbinary.Game.Input.Event.GameKeyEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.Event.PressGameKeyEventHandler as PressGameKeyEventHandler
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "GameKeyEventHandler"


jchain : List String
jchain =
    [ "GameKeyEventHandler" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "pressGameKeyEventHandler", JR.defaultOf "" ), ( "upGameKeyEventHandler", JR.defaultOf "" ), ( "downGameKeyEventHandler", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "addListenerForPlayer_2", jm_addListenerForPlayer_2 )
        , ( "addListener_1", jm_addListener_1 )
        , ( "removeListener_1", jm_removeListener_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyEventHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_addListenerForPlayer_2", jm_addListenerForPlayer_2 ), ( "jm_addListener_1", jm_addListener_1 ), ( "jm_removeListener_1", jm_removeListener_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameKeyEventHandler" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "pressGameKeyEventHandler" "" JR.this (JR.callStatic PressGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "upGameKeyEventHandler" "" JR.this (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "downGameKeyEventHandler" "" JR.this (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 [])),
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


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.thisField "pressGameKeyEventHandler") []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.thisField "upGameKeyEventHandler") []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.thisField "downGameKeyEventHandler") []) ])
        (jregister jheap)
        jthis
        jargs


jm_addListenerForPlayer_2 : JR.Method
jm_addListenerForPlayer_2 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ), ( "playerInputId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "eventListenerInterface") []), JR.this, (JR.field "ADD_LISTENER" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "addListenerSingleThreaded_1" (JR.thisField "pressGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.invoke "addListenerSingleThreaded_1" (JR.invoke "getInstanceForPlayer_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "playerInputId") ]) [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.invoke "addListenerSingleThreaded_1" (JR.invoke "getInstanceForPlayer_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "playerInputId") ]) [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addListener_1 : JR.Method
jm_addListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "eventListenerInterface") []), JR.this, (JR.field "ADD_LISTENER" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "addListenerSingleThreaded_1" (JR.thisField "pressGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.invoke "addListenerSingleThreaded_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.invoke "addListenerSingleThreaded_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeListener_1 : JR.Method
jm_removeListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "eventListenerInterface") []), JR.this, (JR.field "REMOVE_LISTENER" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "removeListenerSingleThreaded_1" (JR.thisField "pressGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.invoke "removeListenerSingleThreaded_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.invoke "removeListenerSingleThreaded_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "eventListenerInterface") ]) ])
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

