module Org.Allbinary.Logic.Communication.Log.LogBuffer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "LogBuffer"


jchain : List String
jchain =
    [ "LogBuffer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "logEntryVector", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "logAll_0", jm_logAll_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogBuffer"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_logAll_0", jm_logAll_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "logEntryVector" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "log", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "logEntryVector") [ (JR.local "log") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_logAll_0 : JR.Method
jm_logAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "logEntryVector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66747 -> (JR.setLocal "index" "I" (JR.lit jwN66747))) JR.increment) ]) (JR.run [ 
                        JR.declare "log" "" (JR.invoke "get_1" (JR.thisField "logEntryVector") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "putL_1" (JR.thisField "logUtil") [ (JR.local "log") ]) ]) ] ])
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

