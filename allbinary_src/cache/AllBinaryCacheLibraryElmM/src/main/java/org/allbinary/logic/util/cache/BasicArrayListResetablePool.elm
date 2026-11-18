module Org.Allbinary.Logic.Util.Cache.BasicArrayListResetablePool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Logic.Util.Cache.AbstractArrayListPool as AbstractArrayListPool


jclass : String
jclass =
    "BasicArrayListResetablePool"


jchain : List String
jchain =
    [ "BasicArrayListResetablePool" ]
        ++ AbstractArrayListPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    AbstractArrayListPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "clear_0", jm_clear_0 )
        , ( "remove_1", jm_remove_1 ) ]
        AbstractArrayListPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicArrayListResetablePool"
        [ ( "jm_clear_0", jm_clear_0 ), ( "jm_remove_1", jm_remove_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AbstractArrayListPool.jinit_1 JR.this [ (JR.local "cacheableInterfaceFactoryInterface") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "buffers") []), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.run [ 
                        JR.return (JR.invoke "removeAt_1" (JR.thisField "buffers") [ (JR.map2 JR.sub (JR.local "size") (JR.int 1)) ]) ]) (JR.run [ 
                        JR.return (JR.invoke "getInstance_1" (JR.thisField "cacheableInterfaceFactoryInterface") [ (JR.local "key") ]) ]) ])
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

