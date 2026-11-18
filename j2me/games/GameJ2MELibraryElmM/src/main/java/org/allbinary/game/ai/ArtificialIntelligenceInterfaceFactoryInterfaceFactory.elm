module Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil


jclass : String
jclass =
    "ArtificialIntelligenceInterfaceFactoryInterfaceFactory"


jchain : List String
jchain =
    [ "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "clear_0", jm_clear_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceFromCollection_1", jm_getInstanceFromCollection_1 )
        , ( "add_1", jm_add_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ArtificialIntelligenceInterfaceFactoryInterfaceFactory"
        [ ( "jm_clear_0", jm_clear_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceFromCollection_1", jm_getInstanceFromCollection_1 ), ( "jm_add_1", jm_add_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceFromCollection_1 : JR.Method
jm_getInstanceFromCollection_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.declare "typeInteger" "" (JR.invoke "get_1" (JR.local "hashtable") [ BasicAI.jstatic_ID ]), 
                    JR.declare "type" "I" (JR.invoke "intValue_0" (JR.local "typeInteger") []), 
                    JR.declare "artificialIntelligenceInterfaceFactoryInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.map2 JR.sub (JR.local "type") (JR.int 1))), 
                    JR.return (JR.local "artificialIntelligenceInterfaceFactoryInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "artificialIntelligenceInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "artificialIntelligenceInterfaceFactoryInterface") ]) ])
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

