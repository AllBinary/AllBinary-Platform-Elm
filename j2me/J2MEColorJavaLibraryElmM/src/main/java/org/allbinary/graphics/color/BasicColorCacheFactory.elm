module BasicColorCacheFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.color
-}

import JR
import BasicColorFactory
import StdUtil


jclass : String
jclass =
    "BasicColorCacheFactory"


jchain : List String
jchain =
    [ "BasicColorCacheFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "hashtable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "add_1", jm_add_1 )
        , ( "getAndOrCreate_1", jm_getAndOrCreate_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicColorCacheFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_getAndOrCreate_1", jm_getAndOrCreate_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicColorCacheFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "basicDefaultColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.cast "I" (JR.invoke "intValue_0" (JR.local "basicDefaultColor") [])), (JR.local "basicDefaultColor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAndOrCreate_1 : JR.Method
jm_getAndOrCreate_1 jheap jthis jargs =
    JR.method [ ( "integer", "" ) ] ""
        (JR.run [ 
                    JR.declare "basicColor" "" (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "integer") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "basicColor") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "basicColor" "" (JR.invoke "createInstance_1" (JR.callStatic BasicColorFactory.jm_getInstance_0 []) [ (JR.invoke "intValue_0" (JR.local "integer") []) ])), 
                        JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.local "integer"), (JR.local "basicColor") ]) ]) identity, 
                    JR.return (JR.local "basicColor") ])
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

