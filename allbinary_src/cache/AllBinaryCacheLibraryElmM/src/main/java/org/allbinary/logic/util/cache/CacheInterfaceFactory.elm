module Org.Allbinary.Logic.Util.Cache.CacheInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR



jclass : String
jclass =
    "CacheInterfaceFactory"


jchain : List String
jchain =
    [ "CacheInterfaceFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CacheInterfaceFactory"
        [ ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "cacheType", "" ), ( "cachePolicy", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "No such ") (JR.invoke "toString_0" (JR.local "cacheType") [])) ]) ])
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

