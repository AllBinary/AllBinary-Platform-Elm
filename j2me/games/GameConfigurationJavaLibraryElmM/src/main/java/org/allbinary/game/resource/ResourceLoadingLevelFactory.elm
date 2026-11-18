module Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.resource
-}

import JR
import JInteger
import Org.Allbinary.Game.Resource.ResourceLoadingLevel as ResourceLoadingLevel


jclass : String
jclass =
    "ResourceLoadingLevelFactory"


jchain : List String
jchain =
    [ "ResourceLoadingLevelFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "LOAD_EARLY", JR.defaultOf "" ), ( "LOAD_TOUCH", JR.defaultOf "" ), ( "LOAD_GAME", JR.defaultOf "" ), ( "LEVEL", JR.defaultOf "" ), ( "MAX_LEVEL", JR.defaultOf "" ), ( "LOAD_ALL", JR.defaultOf "" ), ( "RESOURCE_LOADING_LEVEL_ARRAY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getLevelString_1", jm_getLevelString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ResourceLoadingLevelFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getLevelString_1", jm_getLevelString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ResourceLoadingLevelFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "LOAD_EARLY" "" JR.this (JR.new ResourceLoadingLevel.jnew_2 [ (JR.str "Load Early"), JInteger.jstatic_MAX_VALUE ])),
                JR.exec (JR.setField "LOAD_TOUCH" "" JR.this (JR.new ResourceLoadingLevel.jnew_2 [ (JR.str "Load Touch"), (JR.map2 JR.sub JInteger.jstatic_MAX_VALUE (JR.int 1)) ])),
                JR.exec (JR.setField "LOAD_GAME" "" JR.this (JR.new ResourceLoadingLevel.jnew_2 [ (JR.str "Load Game"), (JR.map2 JR.sub JInteger.jstatic_MAX_VALUE (JR.int 2)) ])),
                JR.exec (JR.setField "LEVEL" "" JR.this (JR.new ResourceLoadingLevel.jnew_2 [ (JR.str "Level"), (JR.map2 JR.sub JInteger.jstatic_MAX_VALUE (JR.int 99)) ])),
                JR.exec (JR.setField "MAX_LEVEL" "" JR.this (JR.new ResourceLoadingLevel.jnew_2 [ (JR.str "Max Level"), (JR.map2 JR.sub JInteger.jstatic_MAX_VALUE (JR.int 100)) ])),
                JR.exec (JR.setField "LOAD_ALL" "" JR.this (JR.new ResourceLoadingLevel.jnew_2 [ (JR.str "Load All"), (JR.map JR.neg (JR.int 1)) ])),
                JR.exec (JR.setField "RESOURCE_LOADING_LEVEL_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.thisField "LOAD_ALL"), (JR.thisField "MAX_LEVEL"), (JR.thisField "LEVEL"), (JR.thisField "LOAD_GAME"), (JR.thisField "LOAD_TOUCH"), (JR.thisField "LOAD_EARLY") ])),
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


jm_getLevelString_1 : JR.Method
jm_getLevelString_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "RESOURCE_LOADING_LEVEL_ARRAY"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66507 -> (JR.setLocal "index" "I" (JR.lit jwN66507))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "level") (JR.invoke "getLevel_0" (JR.aget (JR.thisField "RESOURCE_LOADING_LEVEL_ARRAY") (JR.local "index")) [])) (JR.run [ 
                            JR.return (JR.invoke "getName_0" (JR.aget (JR.thisField "RESOURCE_LOADING_LEVEL_ARRAY") (JR.local "index")) []) ]) identity ]) ], 
                    JR.return (JR.callStatic JInteger.jm_toString_1 [ (JR.local "level") ]) ])
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

