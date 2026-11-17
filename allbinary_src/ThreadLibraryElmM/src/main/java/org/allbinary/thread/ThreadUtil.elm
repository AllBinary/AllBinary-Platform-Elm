module ThreadUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import LogUtil


jclass : String
jclass =
    "ThreadUtil"


jchain : List String
jchain =
    [ "ThreadUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "JOIN", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isRunning_1", jm_isRunning_1 )
        , ( "join_1", jm_join_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThreadUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isRunning_1", jm_isRunning_1 ), ( "jm_join_1", jm_join_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ThreadUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "JOIN" "" JR.this (JR.str "join")),
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


jm_isRunning_1 : JR.Method
jm_isRunning_1 jheap jthis jargs =
    JR.method [ ( "thread", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "thread") JR.null) (JR.invoke "isAlive_0" (JR.local "thread") [])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_join_1 : JR.Method
jm_join_1 jheap jthis jargs =
    JR.method [ ( "thread", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isRunning_1" (JR.callStatic jm_getInstance_0 []) [ (JR.local "thread") ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Waiting for Thread To Join/End"), JR.this, (JR.thisField "JOIN") ]), 
                        JR.exec (JR.invoke "join_0" (JR.local "thread") []) ]) identity ])
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

