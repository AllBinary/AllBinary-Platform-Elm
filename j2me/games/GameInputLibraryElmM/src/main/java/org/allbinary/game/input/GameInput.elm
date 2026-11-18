module Org.Allbinary.Game.Input.GameInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "GameInput"


jchain : List String
jchain =
    [ "GameInput" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "gameKeyEventList", JR.defaultOf "" ), ( "removalGameKeyEventList", JR.defaultOf "" ), ( "isRemoveDuplicateKeyPresses", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "addForRemoval_1", jm_addForRemoval_1 )
        , ( "isForRemoval_1", jm_isForRemoval_1 )
        , ( "clear_0", jm_clear_0 )
        , ( "removeNonAIInputGameKeyEvents_0", jm_removeNonAIInputGameKeyEvents_0 )
        , ( "update_0", jm_update_0 )
        , ( "getRemovalGameKeyEventList_0", jm_getRemovalGameKeyEventList_0 )
        , ( "getGameKeyEventList_0", jm_getGameKeyEventList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInput"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_addForRemoval_1", jm_addForRemoval_1 ), ( "jm_isForRemoval_1", jm_isForRemoval_1 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_removeNonAIInputGameKeyEvents_0", jm_removeNonAIInputGameKeyEvents_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_getRemovalGameKeyEventList_0", jm_getRemovalGameKeyEventList_0 ), ( "jm_getGameKeyEventList_0", jm_getGameKeyEventList_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "removalGameKeyEventList", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameKeyEventList" "" JR.this (JR.local "gameKeyEventList")), 
                    JR.exec (JR.setField "removalGameKeyEventList" "" JR.this (JR.local "removalGameKeyEventList")), 
                    JR.exec (JR.setField "isRemoveDuplicateKeyPresses" "Z" JR.this (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "REMOVE_DUPLICATE_KEY_PRESSES" (JR.callStatic InputFeatureFactory.jm_getInstance_0 [])) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.and (JR.thisField "isRemoveDuplicateKeyPresses") (JR.invoke "contains_1" (JR.thisField "gameKeyEventList") [ (JR.local "gameKeyEvent") ])) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKeyEvent") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "gameKeyEventList") [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Danger Passed Null GameKeyEvent"), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addForRemoval_1 : JR.Method
jm_addForRemoval_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "removalGameKeyEventList") [ (JR.local "gameKeyEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isForRemoval_1 : JR.Method
jm_isForRemoval_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "removalGameKeyEventList") [ (JR.local "gameKeyEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "gameKeyEventList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeNonAIInputGameKeyEvents_0 : JR.Method
jm_removeNonAIInputGameKeyEvents_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.thisField "gameKeyEventList"), 
                    JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67992 -> (JR.setLocal "index" "I" (JR.lit jwN67992))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameKeyEvent" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getSourceId_0" (JR.local "gameKeyEvent") []) (JR.int 1)) (JR.run [ 
                            JR.exec (JR.invoke "removeAt_1" (JR.local "list") [ (JR.local "index") ]) ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "removeList" "" (JR.thisField "removalGameKeyEventList"), 
                    JR.declare "list" "" (JR.thisField "gameKeyEventList"), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "removeList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68461 -> (JR.setLocal "index" "I" (JR.lit jwN68461))) JR.increment) ]) (JR.run [ 
                        JR.declare "anyType" "" (JR.aget (JR.field "objectArray" (JR.local "removeList")) (JR.local "index")), 
                        JR.run [ JR.declare "index2" "I" (JR.invoke "size_0" (JR.local "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index2") (\jwN68353 -> (JR.setLocal "index2" "I" (JR.lit jwN68353))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index2")) (JR.local "anyType")) (JR.run [ 
                                JR.exec (JR.invoke "removeAt_1" (JR.local "list") [ (JR.local "index2") ]) ]) identity ]) ] ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.local "removeList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getRemovalGameKeyEventList_0 : JR.Method
jm_getRemovalGameKeyEventList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "removalGameKeyEventList") ])
        (jregister jheap)
        jthis
        jargs


jm_getGameKeyEventList_0 : JR.Method
jm_getGameKeyEventList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameKeyEventList") ])
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

