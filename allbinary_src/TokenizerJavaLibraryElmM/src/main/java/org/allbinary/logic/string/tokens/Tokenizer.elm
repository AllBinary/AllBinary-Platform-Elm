module Org.Allbinary.Logic.String.Tokens.Tokenizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string.tokens
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "Tokenizer"


jchain : List String
jchain =
    [ "Tokenizer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "sep", JR.defaultOf "" ), ( "endSep", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setSep_1", jm_setSep_1 )
        , ( "setEndSep_1", jm_setEndSep_1 )
        , ( "getInsideSep_1", jm_getInsideSep_1 )
        , ( "getTokensFromString_2", jm_getTokensFromString_2 )
        , ( "getTokens_1", jm_getTokens_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Tokenizer"
        [ ( "jm_setSep_1", jm_setSep_1 ), ( "jm_setEndSep_1", jm_setEndSep_1 ), ( "jm_getInsideSep_1", jm_getInsideSep_1 ), ( "jm_getTokensFromString_2", jm_getTokensFromString_2 ), ( "jm_getTokens_1", jm_getTokens_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "sep", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "endSep" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "sep"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Sep provided is not valid") ]) ]) identity, 
                    JR.exec (JR.setField "sep" "" JR.this (JR.local "sep")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setSep_1 : JR.Method
jm_setSep_1 jheap jthis jargs =
    JR.method [ ( "sep", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "sep" "" JR.this (JR.local "sep")) ])
        (jregister jheap)
        jthis
        jargs


jm_setEndSep_1 : JR.Method
jm_setEndSep_1 jheap jthis jargs =
    JR.method [ ( "endSep", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "endSep" "" JR.this (JR.local "endSep")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInsideSep_1 : JR.Method
jm_getInsideSep_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.declare "tokenList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "size" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ 
                        JR.exec (JR.setLocal "index" "I" (JR.invoke "indexOf_2" (JR.local "string") [ (JR.thisField "sep"), (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "index") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.declare "end" "I" (JR.invoke "indexOf_2" (JR.local "string") [ (JR.thisField "endSep"), (JR.map2 JR.add (JR.local "index") (JR.invoke "length_0" (JR.thisField "sep") [])) ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "end") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "tokenList") [ (JR.invoke "substring_2" (JR.local "string") [ (JR.map2 JR.add (JR.local "index") (JR.invoke "length_0" (JR.thisField "sep") [])), (JR.map2 JR.sub (JR.local "end") ((JR.map2 JR.sub (JR.invoke "length_0" (JR.thisField "endSep") []) (JR.int 1)))) ]) ]), 
                                JR.exec (JR.setLocal "index" "I" (JR.map2 JR.add (JR.local "end") (JR.invoke "length_0" (JR.thisField "endSep") []))) ]) identity ]) (JR.run [ 
                            JR.break ]) ]), 
                    JR.return (JR.local "tokenList") ])
        (jregister jheap)
        jthis
        jargs


jm_getTokensFromString_2 : JR.Method
jm_getTokensFromString_2 jheap jthis jargs =
    JR.method [ ( "string", "" ), ( "tokenVector", "" ) ] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "end" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "length_0" (JR.local "string") [])) (JR.run [ 
                        JR.exec (JR.setLocal "end" "I" (JR.invoke "indexOf_2" (JR.local "string") [ (JR.thisField "sep"), (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "end") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "tokenVector") [ (JR.invoke "substring_2" (JR.local "string") [ (JR.local "index"), (JR.local "end") ]) ]), 
                            JR.exec (JR.setLocal "index" "I" (JR.map2 JR.add (JR.local "end") (JR.invoke "length_0" (JR.thisField "sep") []))) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "tokenVector") [ (JR.invoke "substring_2" (JR.local "string") [ (JR.local "index"), (JR.invoke "length_0" (JR.local "string") []) ]) ]), 
                            JR.break ]) ]), 
                    JR.return (JR.local "tokenVector") ])
        (jregister jheap)
        jthis
        jargs


jm_getTokens_1 : JR.Method
jm_getTokens_1 jheap jthis jargs =
    JR.method [ ( "stringVector", "" ) ] ""
        (JR.run [ 
                    JR.declare "tokenHashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.declare "string" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.declare "end" "I" (JR.int 0), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "stringVector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68335 -> (JR.setLocal "index" "I" (JR.lit jwN68335))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "string" "" (JR.aget (JR.field "objectArray" (JR.local "stringVector")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "end" "I" (JR.invoke "indexOf_1" (JR.local "string") [ (JR.thisField "sep") ])), 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.local "end") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "put_2" (JR.local "tokenHashtable") [ (JR.invoke "substring_2" (JR.local "string") [ (JR.int 0), (JR.local "end") ]), (JR.invoke "substring_2" (JR.local "string") [ (JR.map2 JR.add (JR.local "end") (JR.int 1)), (JR.invoke "length_0" (JR.local "string") []) ]) ]) ]) identity ]) ], 
                    JR.return (JR.local "tokenHashtable") ])
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

