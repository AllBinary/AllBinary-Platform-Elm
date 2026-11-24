module Org.Allbinary.Game.Input.Mapping.InputToGameKeyMapping exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Game.Input.Mapping.InputMapping as InputMapping
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "InputToGameKeyMapping"


jchain : List String
jchain =
    [ "InputToGameKeyMapping" ]
        ++ InputMapping.jchain


jfields : List ( String, JR.JValue )
jfields =
    InputMapping.jfields ++ [ ( "gameKeyFactory", JR.defaultOf "" ), ( "mappedGameKeys", JR.defaultOf "" ), ( "platformToGameKeyMapping", JR.defaultOf "" ), ( "negativePlatformToGameKeyMapping", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "removeAll_0", jm_removeAll_0 )
        , ( "addMapping_1", jm_addMapping_1 )
        , ( "addAll_2", jm_addAll_2 )
        , ( "add_2", jm_add_2 )
        , ( "remove_2", jm_remove_2 )
        , ( "set_2", jm_set_2 )
        , ( "getMaxMappable_0", jm_getMaxMappable_0 )
        , ( "getReverseInstance_1", jm_getReverseInstance_1 )
        , ( "initGameKey_2", jm_initGameKey_2 )
        , ( "getSmallestCanvasGameKeyCode_1", jm_getSmallestCanvasGameKeyCode_1 )
        , ( "init_1", jm_init_1 )
        , ( "getInstanceForCanvas_2", jm_getInstanceForCanvas_2 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        InputMapping.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputToGameKeyMapping"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_removeAll_0", jm_removeAll_0 ), ( "jm_addMapping_1", jm_addMapping_1 ), ( "jm_addAll_2", jm_addAll_2 ), ( "jm_add_2", jm_add_2 ), ( "jm_remove_2", jm_remove_2 ), ( "jm_set_2", jm_set_2 ), ( "jm_getMaxMappable_0", jm_getMaxMappable_0 ), ( "jm_getReverseInstance_1", jm_getReverseInstance_1 ), ( "jm_initGameKey_2", jm_initGameKey_2 ), ( "jm_getSmallestCanvasGameKeyCode_1", jm_getSmallestCanvasGameKeyCode_1 ), ( "jm_init_1", jm_init_1 ), ( "jm_getInstanceForCanvas_2", jm_getInstanceForCanvas_2 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InputToGameKeyMapping" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect InputMapping.jinit_0 JR.this []),
                JR.exec (JR.setField "gameKeyFactory" "" JR.this (JR.callStatic GameKeyFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "mappedGameKeys" "" JR.this (JR.arrayOf "" [ (JR.field "UP" (JR.thisField "gameKeyFactory")), (JR.field "DOWN" (JR.thisField "gameKeyFactory")), (JR.field "LEFT" (JR.thisField "gameKeyFactory")), (JR.field "RIGHT" (JR.thisField "gameKeyFactory")) ])),
                JR.exec (JR.setField "platformToGameKeyMapping" "" JR.this (JR.newArray "" [ (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "negativePlatformToGameKeyMapping" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "clear_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "InputToGameKeyMapping.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "platformToGameKeyMapping")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68435 -> (JR.setLocal "index" "I" (JR.lit jwN68435))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "platformToGameKeyMapping") (\jaN68316 -> JR.andThen (JR.local "index") (\jiN68316 -> (JR.aset (JR.lit jaN68316) (JR.lit jiN68316) (JR.field "NONE" (JR.thisField "gameKeyFactory")))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_removeAll_0 : JR.Method
jm_removeAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia InputMapping.jvtable "removeAll_0" JR.this []), 
                    JR.exec (JR.invoke "clear_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_addMapping_1 : JR.Method
jm_addMapping_1 jheap jthis jargs =
    JR.method [ ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "getMaxMappable_0" (JR.local "inputToGameKeyMapping") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68782 -> (JR.setLocal "index" "I" (JR.lit jwN68782))) JR.decrement) ]) (JR.run [ 
                        JR.declare "input" "" (JR.invoke "getInstance_1" (JR.local "inputToGameKeyMapping") [ (JR.local "index") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "input") (JR.field "NONE" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "addAll_2" JR.this [ (JR.local "input"), (JR.invoke "getMappedInput_1" (JR.local "inputToGameKeyMapping") [ (JR.local "input") ]) ]) ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addAll_2 : JR.Method
jm_addAll_2 jheap jthis jargs =
    JR.method [ ( "input", "" ), ( "list", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69045 -> (JR.setLocal "index" "I" (JR.lit jwN69045))) JR.decrement) ]) (JR.run [ 
                        JR.declare "mappedToInput" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "add_2" JR.this [ (JR.local "input"), (JR.local "mappedToInput") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_add_2 : JR.Method
jm_add_2 jheap jthis jargs =
    JR.method [ ( "input", "" ), ( "mappedToInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia InputMapping.jvtable "add_2" JR.this [ (JR.local "input"), (JR.local "mappedToInput") ]), 
                    JR.exec (JR.invoke "set_2" JR.this [ (JR.local "input"), (JR.local "mappedToInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_2 : JR.Method
jm_remove_2 jheap jthis jargs =
    JR.method [ ( "input", "" ), ( "mappedToInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "input") ]) ]) [ (JR.str " == ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "mappedToInput") ]) ]) []), JR.this, (JR.str "InputToGameKeyMapping::remove") ]), 
                    JR.exec (JR.callVia InputMapping.jvtable "remove_2" JR.this [ (JR.local "input"), (JR.local "mappedToInput") ]), 
                    JR.exec (JR.invoke "set_2" JR.this [ (JR.local "input"), (JR.field "NONE" (JR.thisField "gameKeyFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_set_2 : JR.Method
jm_set_2 jheap jthis jargs =
    JR.method [ ( "input", "" ), ( "mappedToInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "id" "I" (JR.invoke "getId_0" (JR.local "mappedToInput") []), 
                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "id") (JR.int 0)) (JR.map2 JR.less (JR.local "id") (JR.alength (JR.thisField "platformToGameKeyMapping")))) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "platformToGameKeyMapping") (\jaN69718 -> JR.andThen (JR.local "id") (\jiN69718 -> (JR.aset (JR.lit jaN69718) (JR.lit jiN69718) (JR.local "input"))))) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxMappable_0 : JR.Method
jm_getMaxMappable_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.alength (JR.thisField "platformToGameKeyMapping")) ])
        (jregister jheap)
        jthis
        jargs


jm_getReverseInstance_1 : JR.Method
jm_getReverseInstance_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "platformToGameKeyMapping"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70211 -> (JR.setLocal "index" "I" (JR.lit jwN70211))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "getId_0" (JR.aget (JR.thisField "platformToGameKeyMapping") (JR.local "index")) []) (JR.local "id")) (JR.run [ 
                            JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.local "inputFactory") [ (JR.local "index") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "input") JR.null) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "input") ]) ]) identity ]) identity ]) ], 
                    JR.return (JR.local "list") ])
        (jregister jheap)
        jthis
        jargs


jm_initGameKey_2 : JR.Method
jm_initGameKey_2 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "gameKey", "" ) ] ""
        (JR.run [ 
                    JR.declare "key" "I" (JR.invoke "getKeyCode_1" (JR.local "canvas") [ (JR.invoke "getId_0" (JR.local "gameKey") []) ]), 
                    JR.ifElse (JR.and (JR.map2 JR.less (JR.local "key") (JR.int 0)) (JR.map2 JR.less (JR.map JR.neg (JR.local "key")) (JR.alength (JR.thisField "negativePlatformToGameKeyMapping")))) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "negativePlatformToGameKeyMapping") (\jaN70707 -> JR.andThen (JR.map JR.neg (JR.local "key")) (\jiN70707 -> (JR.aset (JR.lit jaN70707) (JR.lit jiN70707) (JR.local "gameKey"))))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "key") (JR.int 0)) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "platformToGameKeyMapping") (JR.local "key")) (JR.field "NONE" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                            JR.exec (JR.andThen (JR.thisField "platformToGameKeyMapping") (\jaN70656 -> JR.andThen (JR.local "key") (\jiN70656 -> (JR.aset (JR.lit jaN70656) (JR.lit jiN70656) (JR.local "gameKey"))))) ]) identity ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "toString_0" (JR.local "gameKey") []) ]) [ (JR.field "COLON_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.local "key") ]) []), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")), (JR.new (JR.newThrowable "Exception" [ "Exception" ]) []) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSmallestCanvasGameKeyCode_1 : JR.Method
jm_getSmallestCanvasGameKeyCode_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] "I"
        (JR.run [ 
                    JR.declare "nextKey" "I" (JR.int 0), 
                    JR.declare "smallestKey" "I" (JR.int 0), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "mappedGameKeys")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN71021 -> (JR.setLocal "index" "I" (JR.lit jwN71021))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextKey" "I" (JR.invoke "getKeyCode_1" (JR.local "canvas") [ (JR.invoke "getId_0" (JR.aget (JR.thisField "mappedGameKeys") (JR.local "index")) []) ])), 
                        JR.ifElse (JR.map2 JR.less (JR.local "nextKey") (JR.local "smallestKey")) (JR.run [ 
                            JR.exec (JR.setLocal "smallestKey" "I" (JR.local "nextKey")) ]) identity ]) ], 
                    JR.return (JR.local "smallestKey") ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "negativePlatformToGameKeyMapping" "" (JR.newArray "" [ (JR.int 0) ]), 
                        JR.declare "smallestKey" "I" (JR.invoke "getSmallestCanvasGameKeyCode_1" JR.this [ (JR.local "canvas") ]), 
                        JR.ifElse (JR.map2 JR.less (JR.local "smallestKey") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "smallestKey") (\jwN71286 -> (JR.setLocal "smallestKey" "I" (JR.lit jwN71286))) JR.decrement), 
                            JR.ifElse (JR.map2 JR.less (JR.local "smallestKey") (JR.map JR.neg (JR.int 256))) (JR.run [ 
                                JR.exec (JR.setLocal "smallestKey" "I" (JR.map JR.neg (JR.int 256))) ]) identity, 
                            JR.exec (JR.setLocal "negativePlatformToGameKeyMapping" "" (JR.newArray "" [ (JR.map JR.neg (JR.local "smallestKey")) ])), 
                            JR.run [ JR.declare "index" "I" (JR.alength (JR.local "negativePlatformToGameKeyMapping")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN71470 -> (JR.setLocal "index" "I" (JR.lit jwN71470))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                                JR.exec (JR.andThen (JR.local "negativePlatformToGameKeyMapping") (\jaN71419 -> JR.andThen (JR.local "index") (\jiN71419 -> (JR.aset (JR.lit jaN71419) (JR.lit jiN71419) (JR.field "NONE" (JR.thisField "gameKeyFactory")))))) ]) ], 
                            JR.exec (JR.setField "negativePlatformToGameKeyMapping" "" JR.this (JR.local "negativePlatformToGameKeyMapping")) ]) identity, 
                        JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "mappedGameKeys")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN71621 -> (JR.setLocal "index" "I" (JR.lit jwN71621))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                            JR.exec (JR.invoke "initGameKey_2" JR.this [ (JR.local "canvas"), (JR.aget (JR.thisField "mappedGameKeys") (JR.local "index")) ]) ]) ] ]) [ ( [ "Throwable" ], "t", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")), (JR.local "t") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForCanvas_2 : JR.Method
jm_getInstanceForCanvas_2 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "id", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "id") (JR.int 0)) (JR.map2 JR.less (JR.local "id") (JR.alength (JR.thisField "platformToGameKeyMapping")))) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "platformToGameKeyMapping") (JR.local "id")) ]) (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.less (JR.local "id") (JR.int 0)) (JR.map2 JR.less (JR.map JR.neg (JR.local "id")) (JR.alength (JR.thisField "negativePlatformToGameKeyMapping")))) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "negativePlatformToGameKeyMapping") (JR.map JR.neg (JR.local "id"))) ]) (JR.run [ 
                        JR.return (JR.field "NONE" (JR.thisField "gameKeyFactory")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.greaterEquals (JR.local "id") (JR.int 0)) (JR.map2 JR.less (JR.local "id") (JR.alength (JR.thisField "platformToGameKeyMapping")))) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "platformToGameKeyMapping") (JR.local "id")) ]) (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.less (JR.local "id") (JR.int 0)) (JR.map2 JR.less (JR.map JR.neg (JR.local "id")) (JR.alength (JR.thisField "negativePlatformToGameKeyMapping")))) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "negativePlatformToGameKeyMapping") (JR.map JR.neg (JR.local "id"))) ]) (JR.run [ 
                        JR.return (JR.field "NONE" (JR.thisField "gameKeyFactory")) ]) ]) ])
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

