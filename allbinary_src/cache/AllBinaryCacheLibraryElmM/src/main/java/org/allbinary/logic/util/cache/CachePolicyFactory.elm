module Org.Allbinary.Logic.Util.Cache.CachePolicyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Logic.Util.Cache.CachePolicy as CachePolicy
import JLong


jclass : String
jclass =
    "CachePolicyFactory"


jchain : List String
jchain =
    [ "CachePolicyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "MAX_TIME_THOUSAND_MAX", JR.defaultOf "" ), ( "THIRTY_MINUTES_TEN_THOUSAND_MAX", JR.defaultOf "" ), ( "THIRTY_MINUTES_FIFTY_THOUSAND_MAX", JR.defaultOf "" ), ( "ONE_MINUTE_FIVE_MAX", JR.defaultOf "" ), ( "ONE_MINUTE_TEN_MAX", JR.defaultOf "" ), ( "ONE_MINUTE_ONE_HUNDRED_MAX", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CachePolicyFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CachePolicyFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "lru")),
                JR.exec (JR.setField "MAX_TIME_THOUSAND_MAX" "" JR.this (JR.new CachePolicy.jnew_3 [ (JR.thisField "NAME"), JLong.jstatic_MAX_VALUE, (JR.int 1000) ])),
                JR.exec (JR.setField "THIRTY_MINUTES_TEN_THOUSAND_MAX" "" JR.this (JR.new CachePolicy.jnew_3 [ (JR.thisField "NAME"), (JR.map2 JR.mul (JR.map2 JR.mul (JR.int 1000) (JR.int 60)) (JR.int 30)), (JR.int 10000) ])),
                JR.exec (JR.setField "THIRTY_MINUTES_FIFTY_THOUSAND_MAX" "" JR.this (JR.new CachePolicy.jnew_3 [ (JR.thisField "NAME"), (JR.map2 JR.mul (JR.map2 JR.mul (JR.int 1000) (JR.int 60)) (JR.int 30)), (JR.int 100000) ])),
                JR.exec (JR.setField "ONE_MINUTE_FIVE_MAX" "" JR.this (JR.new CachePolicy.jnew_3 [ (JR.thisField "NAME"), (JR.map2 JR.mul (JR.map2 JR.mul (JR.int 1000) (JR.int 60)) (JR.int 1)), (JR.int 5) ])),
                JR.exec (JR.setField "ONE_MINUTE_TEN_MAX" "" JR.this (JR.new CachePolicy.jnew_3 [ (JR.thisField "NAME"), (JR.map2 JR.mul (JR.map2 JR.mul (JR.int 1000) (JR.int 60)) (JR.int 1)), (JR.int 10) ])),
                JR.exec (JR.setField "ONE_MINUTE_ONE_HUNDRED_MAX" "" JR.this (JR.new CachePolicy.jnew_3 [ (JR.thisField "NAME"), (JR.map2 JR.mul (JR.map2 JR.mul (JR.int 1000) (JR.int 60)) (JR.int 1)), (JR.int 100) ])),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

