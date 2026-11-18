module Org.Allbinary.Logic.Util.Cache.PoolInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR



jclass : String
jclass =
    "PoolInterfaceFactory"


jchain : List String
jchain =
    [ "PoolInterfaceFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PoolInterfaceFactory"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaceFactoryInterface", "" ), ( "poolType", "" ), ( "cachePolicy", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "No Such PoolType: ") (JR.invoke "toString_0" (JR.local "poolType") [])) ]) ])
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

