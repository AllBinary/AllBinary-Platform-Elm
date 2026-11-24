module Org.Allbinary.Logic.String.Tokens.UniqueTokens exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string.tokens
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.String.CommonSeps as CommonSeps
import JHashSet
import JInteger
import Org.Allbinary.Logic.String.Regex.Replace.Replace as Replace
import Org.Allbinary.Logic.String.Tokens.Tokenizer as Tokenizer


jclass : String
jclass =
    "UniqueTokens"


jchain : List String
jchain =
    [ "UniqueTokens" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "specialCharacters", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getWhithoutDashesAndSkipNumberOnlyTokens_1", jm_getWhithoutDashesAndSkipNumberOnlyTokens_1 )
        , ( "numberOnly_1", jm_numberOnly_1 )
        , ( "isSpecialCharacter_1", jm_isSpecialCharacter_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UniqueTokens"
        [ ( "jm_getWhithoutDashesAndSkipNumberOnlyTokens_1", jm_getWhithoutDashesAndSkipNumberOnlyTokens_1 ), ( "jm_numberOnly_1", jm_numberOnly_1 ), ( "jm_isSpecialCharacter_1", jm_isSpecialCharacter_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "specialCharacters" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "!") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "@") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.field "POUND" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "$") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "%") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "^") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.field "AMPERSAND" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.field "STAR" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "(") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str ")") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "-") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "_") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "+") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "=") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "\\") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "|") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.field "EXTENSION_SEP" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str ",") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "<") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str ">") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "?") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "/") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "~") ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "specialCharacters") [ (JR.str "`") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getWhithoutDashesAndSkipNumberOnlyTokens_1 : JR.Method
jm_getWhithoutDashesAndSkipNumberOnlyTokens_1 jheap jthis jargs =
    JR.method [ ( "stringVector", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "hashSet" "" (JR.new JHashSet.jnew_0 []), 
                        JR.declare "index" "I" (JR.int 0), 
                        JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                        JR.while (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.local "stringVector") [])) (JR.run [ 
                            JR.declare "keywords" "" (JR.invoke "get_1" (JR.local "stringVector") [ (JR.local "index") ]), 
                            JR.declare "tokenizer" "" (JR.new Tokenizer.jnew_1 [ (JR.field "COMMA" (JR.local "commonSeps")) ]), 
                            JR.declare "keywordVector" "" (JR.invoke "getTokensFromString_2" (JR.local "tokenizer") [ (JR.local "keywords"), (JR.new BasicArrayListD.jnew_0 []) ]), 
                            JR.run [ JR.declare "forIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "forIndex") (JR.invoke "size_0" (JR.local "keywordVector") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "forIndex") (\jwN68591 -> (JR.setLocal "forIndex" "I" (JR.lit jwN68591))) JR.increment) ]) (JR.run [ 
                                JR.declare "cleanString" "" (JR.invoke "get_1" (JR.local "keywordVector") [ (JR.local "forIndex") ]), 
                                JR.exec (JR.setLocal "cleanString" "" (JR.invoke "trim_0" (JR.local "cleanString") [])), 
                                JR.ifElse (JR.map2 JR.notEquals (JR.invoke "indexOf_1" (JR.local "cleanString") [ (JR.char 45) ]) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.setLocal "cleanString" "" (JR.invoke "all_1" (JR.new Replace.jnew_2 [ (JR.str "-"), (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.local "cleanString") ])) ]) identity, 
                                JR.exec (JR.invoke "add_1" (JR.local "hashSet") [ (JR.local "cleanString") ]), 
                                JR.ifElse (JR.map2 JR.notEquals (JR.invoke "indexOf_1" (JR.local "cleanString") [ (JR.char 32) ]) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                    JR.declare "spaceTokenizer" "" (JR.new Tokenizer.jnew_1 [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                                    JR.declare "subKeywordVector" "" (JR.invoke "getTokensFromString_2" (JR.local "spaceTokenizer") [ (JR.local "cleanString"), (JR.new BasicArrayListD.jnew_0 []) ]), 
                                    JR.run [ JR.declare "spaceIndex" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "spaceIndex") (JR.invoke "size_0" (JR.local "subKeywordVector") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "spaceIndex") (\jwN68514 -> (JR.setLocal "spaceIndex" "I" (JR.lit jwN68514))) JR.increment) ]) (JR.run [ 
                                        JR.declare "subCleanString" "" (JR.invoke "get_1" (JR.local "subKeywordVector") [ (JR.local "spaceIndex") ]), 
                                        JR.ifElse (JR.and (JR.map JR.not_ (JR.invoke "isSpecialCharacter_1" JR.this [ (JR.local "subCleanString") ])) (JR.map JR.not_ (JR.invoke "numberOnly_1" JR.this [ (JR.local "subCleanString") ]))) (JR.run [ 
                                            JR.exec (JR.invoke "add_1" (JR.local "hashSet") [ (JR.local "subCleanString") ]) ]) identity ]) ] ]) identity ]) ], 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN68609 -> (JR.setLocal "index" "I" (JR.lit jwN68609))) JR.increment) ]), 
                        JR.return (JR.local "hashSet") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_numberOnly_1 : JR.Method
jm_numberOnly_1 jheap jthis jargs =
    JR.method [ ( "subCleaningString", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic JInteger.jm_parseInt_1 [ (JR.local "subCleaningString") ]), 
                        JR.return (JR.bool True) ]) [ ( [ "NumberFormatException" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_isSpecialCharacter_1 : JR.Method
jm_isSpecialCharacter_1 jheap jthis jargs =
    JR.method [ ( "subCleaningString", "" ) ] "Z"
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.invoke "size_0" (JR.thisField "specialCharacters") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69068 -> (JR.setLocal "index" "I" (JR.lit jwN69068))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "subCleaningString") [ (JR.invoke "get_1" (JR.thisField "specialCharacters") [ (JR.local "index") ]) ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) identity ]) ], 
                    JR.return (JR.bool False) ])
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

