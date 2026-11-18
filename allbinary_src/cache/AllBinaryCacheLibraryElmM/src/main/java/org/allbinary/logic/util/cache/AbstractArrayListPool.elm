module Org.Allbinary.Logic.Util.Cache.AbstractArrayListPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Util.Cache.PoolInterface as PoolInterface


jclass : String
jclass =
    "AbstractArrayListPool"


jchain : List String
jchain =
    [ "AbstractArrayListPool" ]
        ++ PoolInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "buffers", JR.defaultOf "" ), ( "cacheableInterfaceFactoryInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "clear_0", jm_clear_0 )
        , ( "remove_1", jm_remove_1 )
        , ( "add_1", jm_add_1 )
        , ( "addArray_1", jm_addArray_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbstractArrayListPool"
        [ ( "jm_clear_0", jm_clear_0 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_addArray_1", jm_addArray_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "buffers" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "cacheableInterfaceFactoryInterface" "" JR.this (JR.local "cacheableInterfaceFactoryInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "buffers") [ (JR.local "cacheableInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addArray_1 : JR.Method
jm_addArray_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaces", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "cacheableInterfaces"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66986 -> (JR.setLocal "index" "I" (JR.lit jwN66986))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "buffers") [ (JR.aget (JR.local "cacheableInterfaces") (JR.local "index")) ]) ]) ] ])
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

