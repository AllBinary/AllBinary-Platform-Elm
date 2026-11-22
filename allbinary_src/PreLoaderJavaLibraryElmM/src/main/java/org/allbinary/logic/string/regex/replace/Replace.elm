module Org.Allbinary.Logic.String.Regex.Replace.Replace exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string.regex.replace
-}

import JR
import Org.Allbinary.Globals.AppUrlGlobals as AppUrlGlobals
import Org.Allbinary.J2SEUtil as J2SEUtil
import JInteger
import JSystem
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS


jclass : String
jclass =
    "Replace"


jchain : List String
jchain =
    [ "Replace" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "j2seUtil", JR.defaultOf "" ), ( "REPLACERS_", JR.defaultOf "" ), ( "ALL", JR.defaultOf "" ), ( "FOUND_KEY", JR.defaultOf "" ), ( "hashMap", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "all_1", jm_all_1 )
        , ( "upTo_2", jm_upTo_2 )
        , ( "line_1", jm_line_1 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Replace"
        [ ( "jm_all_1", jm_all_1 ), ( "jm_upTo_2", jm_upTo_2 ), ( "jm_line_1", jm_line_1 ), ( "jm_main_1", jm_main_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "key", "" ), ( "value", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "j2seUtil" "" JR.this (JR.callStatic J2SEUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "REPLACERS_" "" JR.this (JR.str "Replacers: ")),
                JR.exec (JR.setField "ALL" "" JR.this (JR.str "all")),
                JR.exec (JR.setField "FOUND_KEY" "" JR.this (JR.str "found key total: ")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "hashMap" "" JR.this (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])), 
                    JR.exec (JR.invoke "put_2" (JR.thisField "hashMap") [ (JR.arrayOf "" [ (JR.local "key") ]), (JR.arrayOf "" [ (JR.local "value") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "hashMap", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "j2seUtil" "" JR.this (JR.callStatic J2SEUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "REPLACERS_" "" JR.this (JR.str "Replacers: ")),
                JR.exec (JR.setField "ALL" "" JR.this (JR.str "all")),
                JR.exec (JR.setField "FOUND_KEY" "" JR.this (JR.str "found key total: ")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "hashMap" "" JR.this (JR.local "hashMap")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_all_1 : JR.Method
jm_all_1 jheap jthis jargs =
    JR.method [ ( "replace", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "upTo_2" JR.this [ (JR.local "replace"), JInteger.jstatic_MIN_VALUE ]) ])
        (jregister jheap)
        jthis
        jargs


jm_upTo_2 : JR.Method
jm_upTo_2 jheap jthis jargs =
    JR.method [ ( "replace", "" ), ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.declare "newStringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "totalNumberOfReplaces" "I" (JR.int 0), 
                    JR.declare "keys" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "values" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "keyArray" "" (JR.invoke "getHashMapAsArray_1" (JR.thisField "j2seUtil") [ (JR.thisField "hashMap") ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "keyArray")), 
                    JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN69756 -> (JR.setLocal "index2" "I" (JR.lit jwN69756))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "keys" "" (JR.aget (JR.local "keyArray") (JR.local "index2"))), 
                        JR.exec (JR.setLocal "values" "" (JR.invoke "get_1" (JR.thisField "hashMap") [ (JR.local "keys") ])), 
                        JR.declare "foundTotal" "J" (JR.long 0), 
                        JR.declare "index" "I" (JR.int 0), 
                        JR.declare "nextKey" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "end" "I" (JR.lit (JR.defaultOf "I")), 
                        JR.declare "nextSecondKey" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "begin2" "I" (JR.lit (JR.defaultOf "I")), 
                        JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "length_0" (JR.local "replace") [])) (JR.run [ 
                            JR.declare "begin" "I" (JR.invoke "indexOf_2" (JR.local "replace") [ (JR.aget (JR.local "keys") (JR.int 0)), (JR.local "index") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "begin") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.postUpdate (JR.local "foundTotal") (\jwN68646 -> (JR.setLocal "foundTotal" "J" (JR.lit jwN68646))) JR.increment), 
                                JR.ifElse (JR.map2 JR.equals (JR.map2 JR.rem (JR.local "foundTotal") (JR.long 100)) (JR.long 0)) (JR.run [ 
                                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.thisField "FOUND_KEY") (JR.local "foundTotal")) ]) ]) identity, 
                                JR.exec (JR.setLocal "nextKey" "" (JR.aget (JR.local "keys") (JR.int 0))), 
                                JR.exec (JR.setLocal "end" "I" (JR.map2 JR.add (JR.local "begin") (JR.invoke "length_0" (JR.local "nextKey") []))), 
                                JR.exec (JR.invoke "delete_2" (JR.local "newStringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "newStringBuffer") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.invoke "substring_2" (JR.local "replace") [ (JR.int 0), (JR.local "begin") ]) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.aget (JR.local "values") (JR.int 0)) ]), 
                                JR.exec (JR.setLocal "index" "I" (JR.invoke "length_0" (JR.local "newStringBuffer") [])), 
                                JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.invoke "substring_2" (JR.local "replace") [ (JR.local "end"), (JR.invoke "length_0" (JR.local "replace") []) ]) ]), 
                                JR.exec (JR.setLocal "replace" "" (JR.invoke "toString_0" (JR.local "newStringBuffer") [])), 
                                JR.ifElse (JR.map2 JR.greater (JR.alength (JR.local "keys")) (JR.int 1)) (JR.run [ 
                                    JR.exec (JR.setLocal "nextSecondKey" "" (JR.aget (JR.local "keys") (JR.int 1))), 
                                    JR.exec (JR.setLocal "begin2" "I" (JR.invoke "indexOf_2" (JR.local "replace") [ (JR.local "nextSecondKey"), (JR.local "index") ])), 
                                    JR.ifElse (JR.map2 JR.notEquals (JR.local "begin2") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                        JR.declare "end2" "I" (JR.map2 JR.add (JR.local "begin2") (JR.invoke "length_0" (JR.local "nextSecondKey") [])), 
                                        JR.exec (JR.invoke "delete_2" (JR.local "newStringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "newStringBuffer") []) ]), 
                                        JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.invoke "substring_2" (JR.local "replace") [ (JR.int 0), (JR.local "begin2") ]) ]), 
                                        JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.aget (JR.local "values") (JR.int 1)) ]), 
                                        JR.exec (JR.setLocal "index" "I" (JR.invoke "length_0" (JR.local "newStringBuffer") [])), 
                                        JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.invoke "substring_2" (JR.local "replace") [ (JR.local "end2"), (JR.invoke "length_0" (JR.local "replace") []) ]) ]), 
                                        JR.exec (JR.setLocal "replace" "" (JR.invoke "toString_0" (JR.local "newStringBuffer") [])) ]) identity ]) identity, 
                                JR.exec (JR.postUpdate (JR.local "totalNumberOfReplaces") (\jwN69587 -> (JR.setLocal "totalNumberOfReplaces" "I" (JR.lit jwN69587))) JR.increment), 
                                JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "total") JInteger.jstatic_MIN_VALUE) (JR.map2 JR.greaterEquals (JR.local "totalNumberOfReplaces") (JR.local "total"))) (JR.run [ 
                                    JR.break ]) identity ]) (JR.run [ 
                                JR.break ]) ]) ]) ], 
                    JR.ifElse (JR.map2 JR.greater (JR.local "totalNumberOfReplaces") (JR.int 0)) (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "REPLACE" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Total Number Of Replaces: ") (JR.local "totalNumberOfReplaces")), JR.this, (JR.thisField "ALL") ]) ]) identity ]) identity, 
                    JR.return (JR.local "replace") ])
        (jregister jheap)
        jthis
        jargs


jm_line_1 : JR.Method
jm_line_1 jheap jthis jargs =
    JR.method [ ( "replace", "" ) ] ""
        (JR.run [ 
                    JR.declare "newStringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "totalNumberOfReplaces" "I" (JR.int 0), 
                    JR.declare "key" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "value" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "keyArray" "" (JR.invoke "getHashMapAsArray_1" (JR.thisField "j2seUtil") [ (JR.thisField "hashMap") ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "keyArray")), 
                    JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN71003 -> (JR.setLocal "index2" "I" (JR.lit jwN71003))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "key" "" (JR.aget (JR.local "keyArray") (JR.local "index2"))), 
                        JR.exec (JR.setLocal "value" "" (JR.invoke "get_1" (JR.thisField "hashMap") [ (JR.local "key") ])), 
                        JR.declare "index" "I" (JR.int 0), 
                        JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "length_0" (JR.local "replace") [])) (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.local "newStringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "newStringBuffer") []) ]), 
                            JR.declare "begin" "I" (JR.invoke "indexOf_2" (JR.local "replace") [ (JR.local "key"), (JR.local "index") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "begin") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.thisField "FOUND_KEY") ]), 
                                JR.declare "end" "I" (JR.plus (JR.invoke "indexOf_2" (JR.local "replace") [ (JR.char 10), (JR.map2 JR.add (JR.local "begin") (JR.invoke "length_0" (JR.local "key") [])) ]) (JR.int 1)), 
                                JR.ifElse (JR.map2 JR.greaterEquals (JR.local "end") (JR.int 0)) (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.invoke "substring_2" (JR.local "replace") [ (JR.int 0), (JR.local "begin") ]) ]), 
                                    JR.exec (JR.setLocal "index" "I" (JR.invoke "length_0" (JR.local "newStringBuffer") [])), 
                                    JR.exec (JR.invoke "append_1" (JR.local "newStringBuffer") [ (JR.invoke "substring_2" (JR.local "replace") [ (JR.local "end"), (JR.invoke "length_0" (JR.local "replace") []) ]) ]), 
                                    JR.exec (JR.setLocal "replace" "" (JR.invoke "toString_0" (JR.local "newStringBuffer") [])), 
                                    JR.exec (JR.postUpdate (JR.local "totalNumberOfReplaces") (\jwN70900 -> (JR.setLocal "totalNumberOfReplaces" "I" (JR.lit jwN70900))) JR.increment) ]) identity ]) (JR.run [ 
                                JR.break ]) ]) ]) ], 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "REPLACE" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Total Number Of Replaces: ") (JR.local "totalNumberOfReplaces")), JR.this, (JR.thisField "ALL") ]) ]) identity, 
                    JR.return (JR.local "replace") ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                        JR.declare "appUrlGlobals" "" (JR.new AppUrlGlobals.jnew_0 []), 
                        JR.exec (JR.invoke "setWebappPath_1" (JR.local "appUrlGlobals") [ (JR.str "G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools") ]), 
                        JR.exec (JR.callStatic URLGLOBALS.jm_init_1 [ (JR.local "appUrlGlobals") ]), 
                        JR.declare "testString" "" (JR.str "\"super gun\" big tank \"goodgunriflegun"), 
                        JR.declare "replace" "" (JR.new jnew_2 [ (JR.str "gun"), (JR.str "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz") ]), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.str "Old String: ") (JR.local "testString")) ]), 
                        JR.exec (JR.setLocal "testString" "" (JR.invoke "all_1" (JR.local "replace") [ (JR.local "testString") ])), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.str "New String: ") (JR.local "testString")) ]), 
                        JR.declare "replaceCat" "" (JR.new jnew_2 [ (JR.str "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                        JR.exec (JR.setLocal "testString" "" (JR.invoke "all_1" (JR.local "replaceCat") [ (JR.local "testString") ])), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.str "New String: ") (JR.local "testString")) ]) ]) [ ( [ "Exception" ], "e", identity ) ] identity ])
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

