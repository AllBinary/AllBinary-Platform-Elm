module Org.Allbinary.Input.Motion.Button.TouchButtonFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil


jclass : String
jclass =
    "TouchButtonFactory"


jchain : List String
jchain =
    [ "TouchButtonFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "LIST", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "savedList", JR.defaultOf "" ), ( "saved", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "defaultList_0", jm_defaultList_0 )
        , ( "toggle_2", jm_toggle_2 )
        , ( "setList_1", jm_setList_1 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_defaultList_0", jm_defaultList_0 ), ( "jm_toggle_2", jm_toggle_2 ), ( "jm_setList_1", jm_setList_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "TouchButtonFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "LIST" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "list" "" JR.this (JR.thisField "LIST")),
                JR.exec (JR.setField "savedList" "" JR.this (JR.thisField "LIST")),
                JR.exec (JR.setField "saved" "Z" JR.this (JR.bool False)),
                identity,
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_defaultList_0 : JR.Method
jm_defaultList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.thisField "LIST")), 
                    JR.exec (JR.invoke "toggle_2" JR.this [ (JR.bool False), (JR.thisField "LIST") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toggle_2 : JR.Method
jm_toggle_2 jheap jthis jargs =
    JR.method [ ( "save", "Z" ), ( "list", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "list") (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])) (JR.run [ 
                        JR.exec (JR.setField "savedList" "" JR.this (JR.local "list")), 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "saved")) (JR.run [ 
                            JR.exec (JR.setField "list" "" JR.this (JR.thisField "savedList")) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.local "save") (JR.run [ 
                            JR.ifElse (JR.map JR.not_ (JR.thisField "saved")) (JR.run [ 
                                JR.exec (JR.setField "saved" "Z" JR.this (JR.bool True)), 
                                JR.exec (JR.setField "savedList" "" JR.this (JR.thisField "list")), 
                                JR.exec (JR.setField "list" "" JR.this (JR.thisField "LIST")) ]) identity ]) (JR.run [ 
                            JR.exec (JR.setField "list" "" JR.this (JR.thisField "savedList")), 
                            JR.exec (JR.setField "saved" "Z" JR.this (JR.bool False)) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setList_1 : JR.Method
jm_setList_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "list") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Null List") ]) ]) identity, 
                    JR.exec (JR.setField "list" "" JR.this (JR.local "list")) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
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

