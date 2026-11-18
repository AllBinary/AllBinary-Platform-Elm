module Org.Allbinary.Game.Layer.LevelLayersFinder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil
import Org.Allbinary.Layer.Layer as Layer
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "LevelLayersFinder"


jchain : List String
jchain =
    [ "LevelLayersFinder" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "enumerationUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "get_1", jm_get_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LevelLayersFinder"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_get_1", jm_get_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LevelLayersFinder" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
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


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.local "hashtable") []), 
                    JR.declare "layerHashtableCanBeNull" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "integerCanBeNull" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "cachedIntegerCanBeNull" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerHashtableCanBeNull" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) ])), 
                        JR.exec (JR.setLocal "integerCanBeNull" "" (JR.invoke "get_1" (JR.local "layerHashtableCanBeNull") [ Layer.jstatic_ID ])), 
                        JR.exec (JR.setLocal "cachedIntegerCanBeNull" "" (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.invoke "intValue_0" (JR.local "integerCanBeNull") []) ])), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.local "list") [ (JR.local "cachedIntegerCanBeNull") ])) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "cachedIntegerCanBeNull") ]) ]) identity ]), 
                    JR.return (JR.local "list") ])
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

