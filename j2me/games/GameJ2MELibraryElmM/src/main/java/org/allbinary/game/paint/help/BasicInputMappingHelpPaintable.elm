module Org.Allbinary.Game.Paint.Help.BasicInputMappingHelpPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint.help
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Paint.Help.HelpPaintable as HelpPaintable
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicInputMappingHelpPaintable"


jchain : List String
jchain =
    [ "BasicInputMappingHelpPaintable" ]
        ++ HelpPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    HelpPaintable.jfields ++ [ ( "gameInputMappingArray", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_2", jm_update_2 )
        , ( "get_1", jm_get_1 ) ]
        HelpPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicInputMappingHelpPaintable"
        [ ( "jm_update_2", jm_update_2 ), ( "jm_get_1", jm_get_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "gameInputMappingArray", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HelpPaintable.jinit_3 JR.this [ (JR.str "Help Screen"), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.local "basicColor") ]),
                JR.exec (JR.setField "NONE" "" JR.this (JR.field "NONE" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameInputMappingArray" "" JR.this (JR.local "gameInputMappingArray")), 
                    JR.exec (JR.invoke "update_2" JR.this [ (JR.thisField "NONE"), (JR.thisField "NONE") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "selectedGameKey", "" ), ( "selectedInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameKeyMapping" "" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []), 
                    JR.declare "EQUAL" "" (JR.str " = "), 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "gameInputMappingArray")), 
                    JR.declare "keyInfo" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "gameInputMapping" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "gameKey" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "list" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69557 -> (JR.setLocal "index" "I" (JR.lit jwN69557))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameInputMapping" "" (JR.aget (JR.thisField "gameInputMappingArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "gameKey" "" (JR.invoke "getGameKey_0" (JR.local "gameInputMapping") [])), 
                        JR.exec (JR.setLocal "list" "" (JR.invoke "getMappedInput_1" (JR.invoke "getInputMapping_0" (JR.local "gameKeyMapping") []) [ (JR.local "gameKey") ])), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.andThen (JR.local "keyInfo") (\jaN69385 -> JR.andThen (JR.local "index") (\jiN69385 -> (JR.aset (JR.lit jaN69385) (JR.lit jiN69385) (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.invoke "getName_0" (JR.local "gameInputMapping") []) ]) [ (JR.local "EQUAL") ]) [ (JR.invoke "get_1" JR.this [ (JR.local "list") ]) ]) []))))) ]) ], 
                    JR.exec (JR.callVia HelpPaintable.jvtable "setInputInfoP_1" JR.this [ (JR.local "keyInfo") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "keyList", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "AND" "" (JR.str "and "), 
                    JR.declare "key" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "keyList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70355 -> (JR.setLocal "index" "I" (JR.lit jwN70355))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "key" "" (JR.aget (JR.field "objectArray" (JR.local "keyList")) (JR.local "index"))), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.local "key") []) ]), 
                        JR.ifElse (JR.map2 JR.less (JR.map2 JR.add (JR.local "index") (JR.int 1)) (JR.invoke "size_0" (JR.local "keyList") [])) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.local "keyList") []) (JR.int 2)) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.local "AND") ]) ]) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.map2 JR.add (JR.local "index") (JR.int 2)) (JR.invoke "size_0" (JR.local "keyList") [])) (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]), 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "AND") ]) ]) (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.local "commonSeps")) ]) ]) ]) ]) identity ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

