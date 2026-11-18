module Org.Allbinary.Logic.System.Security.Crypt.DatabaseEncoder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import JByte
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.String.Tokens.Tokenizer as Tokenizer


jclass : String
jclass =
    "DatabaseEncoder"


jchain : List String
jchain =
    [ "DatabaseEncoder" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "encode_1", jm_encode_1 )
        , ( "decode_1", jm_decode_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DatabaseEncoder"
        [ ( "jm_encode_1", jm_encode_1 ), ( "jm_decode_1", jm_decode_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_encode_1 : JR.Method
jm_encode_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "array" "" (JR.local "value"), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "array"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67300 -> (JR.setLocal "index" "I" (JR.lit jwN67300))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.cast "B" (JR.aget (JR.local "array") (JR.local "index"))) []) ]), 
                            JR.ifElse (JR.map2 JR.less (JR.local "index") (JR.map2 JR.sub (JR.alength (JR.local "array")) (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) identity ]) ], 
                        JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.str "DatabaseEncoder"), (JR.str "decode"), (JR.local "e") ]), 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_decode_1 : JR.Method
jm_decode_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "tokenizer" "" (JR.new Tokenizer.jnew_1 [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                        JR.declare "vector" "" (JR.invoke "getTokensFromString_2" (JR.local "tokenizer") [ (JR.local "value"), (JR.new BasicArrayListD.jnew_0 []) ]), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                        JR.declare "decode" "" (JR.newArray "B" [ (JR.local "size") ]), 
                        JR.declare "byteOfData" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68026 -> (JR.setLocal "index" "I" (JR.lit jwN68026))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "byteOfData" "" (JR.aget (JR.field "objectArray" (JR.local "vector")) (JR.local "index"))), 
                            JR.exec (JR.andThen (JR.local "decode") (\jaN67922 -> JR.andThen (JR.local "index") (\jiN67922 -> (JR.aset (JR.lit jaN67922) (JR.lit jiN67922) (JR.callStatic JByte.jm_parseByte_1 [ (JR.local "byteOfData") ]))))) ]) ], 
                        JR.return (JR.local "decode") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putSE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.str "DatabaseEncoder"), (JR.str "decode"), (JR.local "e") ]), 
                        JR.return (JR.field "NULL_BYTE_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ) ] identity ])
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

