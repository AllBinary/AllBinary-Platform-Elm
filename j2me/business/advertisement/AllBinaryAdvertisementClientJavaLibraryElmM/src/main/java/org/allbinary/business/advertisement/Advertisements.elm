module Org.Allbinary.Business.Advertisement.Advertisements exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.System.Security.Licensing.LockedUtil as LockedUtil
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory


jclass : String
jclass =
    "Advertisements"


jchain : List String
jchain =
    [ "Advertisements" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "bannerList", JR.defaultOf "" ), ( "pageList", JR.defaultOf "" ), ( "myRandomFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "addPage_1", jm_addPage_1 )
        , ( "startRandomPage_0", jm_startRandomPage_0 )
        , ( "processRandomPage_0", jm_processRandomPage_0 )
        , ( "stopAllPage_0", jm_stopAllPage_0 )
        , ( "addBanner_1", jm_addBanner_1 )
        , ( "startAll_0", jm_startAll_0 )
        , ( "stopAllBanner_0", jm_stopAllBanner_0 )
        , ( "getBanner_1", jm_getBanner_1 )
        , ( "stopAll_0", jm_stopAll_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Advertisements"
        [ ( "jm_addPage_1", jm_addPage_1 ), ( "jm_startRandomPage_0", jm_startRandomPage_0 ), ( "jm_processRandomPage_0", jm_processRandomPage_0 ), ( "jm_stopAllPage_0", jm_stopAllPage_0 ), ( "jm_addBanner_1", jm_addBanner_1 ), ( "jm_startAll_0", jm_startAll_0 ), ( "jm_stopAllBanner_0", jm_stopAllBanner_0 ), ( "jm_getBanner_1", jm_getBanner_1 ), ( "jm_stopAll_0", jm_stopAll_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "bannerList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "pageList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "myRandomFactory" "" JR.this (JR.callStatic MyRandomFactory.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_addPage_1 : JR.Method
jm_addPage_1 jheap jthis jargs =
    JR.method [ ( "advertisementProcessorInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "pageList") [ (JR.local "advertisementProcessorInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "pageList") [ (JR.local "advertisementProcessorInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_startRandomPage_0 : JR.Method
jm_startRandomPage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "pageList") []), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.run [ 
                        JR.declare "random" "I" (JR.invoke "getAbsoluteNextInt_1" (JR.thisField "myRandomFactory") [ (JR.local "size") ]), 
                        JR.declare "advertisementProcessorInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "pageList")) (JR.local "random")), 
                        JR.exec (JR.invoke "start_0" (JR.local "advertisementProcessorInterface") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processRandomPage_0 : JR.Method
jm_processRandomPage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isLocked_0" (JR.callStatic LockedUtil.jm_getInstance_0 []) []) (JR.run [ 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "pageList") []), 
                        JR.ifElse (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.run [ 
                            JR.declare "random" "I" (JR.invoke "getAbsoluteNextInt_1" (JR.thisField "myRandomFactory") [ (JR.local "size") ]), 
                            JR.declare "advertisementProcessorInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "pageList")) (JR.local "random")), 
                            JR.exec (JR.invoke "process_0" (JR.local "advertisementProcessorInterface") []) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_stopAllPage_0 : JR.Method
jm_stopAllPage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "pageList") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67203 -> (JR.setLocal "index" "I" (JR.lit jwN67203))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.declare "advertisementProcessorInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "pageList")) (JR.local "index")), 
                        JR.exec (JR.invoke "stop_0" (JR.local "advertisementProcessorInterface") []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addBanner_1 : JR.Method
jm_addBanner_1 jheap jthis jargs =
    JR.method [ ( "advertisementProcessorInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "bannerList") [ (JR.local "advertisementProcessorInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "bannerList") [ (JR.local "advertisementProcessorInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_startAll_0 : JR.Method
jm_startAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "bannerList") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67517 -> (JR.setLocal "index" "I" (JR.lit jwN67517))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.declare "advertisementProcessorInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "bannerList")) (JR.local "index")), 
                        JR.exec (JR.invoke "start_0" (JR.local "advertisementProcessorInterface") []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_stopAllBanner_0 : JR.Method
jm_stopAllBanner_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "bannerList") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67706 -> (JR.setLocal "index" "I" (JR.lit jwN67706))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.declare "advertisementProcessorInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "bannerList")) (JR.local "index")), 
                        JR.exec (JR.invoke "stop_0" (JR.local "advertisementProcessorInterface") []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getBanner_1 : JR.Method
jm_getBanner_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "advertisementProcessorInterface" "" (JR.aget (JR.field "objectArray" (JR.thisField "bannerList")) (JR.local "index")), 
                    JR.return (JR.local "advertisementProcessorInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_stopAll_0 : JR.Method
jm_stopAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "stopAllBanner_0" JR.this []), 
                    JR.exec (JR.invoke "stopAllPage_0" JR.this []) ])
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

