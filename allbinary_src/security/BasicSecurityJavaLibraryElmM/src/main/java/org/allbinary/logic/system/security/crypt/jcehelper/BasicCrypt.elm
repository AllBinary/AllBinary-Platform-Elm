module Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.BasicCrypt exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt.jcehelper
-}

import JR
import Org.Allbinary.Logic.Java.Byteutil.ByteUtil as ByteUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Init.Crypt.Jcehelper.CryptInterface as CryptInterface
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "BasicCrypt"


jchain : List String
jchain =
    [ "BasicCrypt" ]
        ++ CryptInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "byteUtil", JR.defaultOf "" ), ( "key", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "encrypt_1", jm_encrypt_1 )
        , ( "decrypt_1", jm_decrypt_1 )
        , ( "mutilate_1", jm_mutilate_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicCrypt"
        [ ( "jm_encrypt_1", jm_encrypt_1 ), ( "jm_decrypt_1", jm_decrypt_1 ), ( "jm_mutilate_1", jm_mutilate_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "keyAsString", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "byteUtil" "" JR.this (JR.callStatic ByteUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "key" "" (JR.field "NULL_BYTE_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])), 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "key" "" (JR.invoke "getByteArray_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "keyAsString") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "AbCrypt(alg,key)"), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.setField "key" "" JR.this (JR.local "key")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_encrypt_1 : JR.Method
jm_encrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.invoke "mutilate_1" JR.this [ (JR.local "array") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "Encrypt Failed"), JR.this, (JR.str "encrypt"), (JR.local "e") ]), 
                        JR.return (JR.field "NULL_BYTE_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_decrypt_1 : JR.Method
jm_decrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.invoke "mutilate_1" JR.this [ (JR.local "array") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "decrypt Failed"), JR.this, (JR.str "decrypt"), (JR.local "e") ]), 
                        JR.return (JR.field "NULL_BYTE_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_mutilate_1 : JR.Method
jm_mutilate_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.declare "value" "B" (JR.lit (JR.defaultOf "B")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "key"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67454 -> (JR.setLocal "index" "I" (JR.lit jwN67454))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "value" "B" (JR.aget (JR.thisField "key") (JR.local "index"))), 
                        JR.exec (JR.setLocal "array" "" (JR.invoke "xor_2" (JR.thisField "byteUtil") [ (JR.local "array"), (JR.local "value") ])) ]) ], 
                    JR.return (JR.local "array") ])
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

