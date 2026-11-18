module Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.SecretComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt.jcehelper
-}

import JR
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.BaseSecretComposite as BaseSecretComposite
import Org.Allbinary.Logic.Java.Byteutil.ByteUtil as ByteUtil


jclass : String
jclass =
    "SecretComposite"


jchain : List String
jchain =
    [ "SecretComposite" ]
        ++ BaseSecretComposite.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseSecretComposite.jfields ++ [ ( "byteUtil", JR.defaultOf "" ), ( "cipher", JR.defaultOf "" ), ( "secretKey", JR.defaultOf "" ), ( "key", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "encrypt_1", jm_encrypt_1 )
        , ( "decrypt_1", jm_decrypt_1 )
        , ( "mutilate_1", jm_mutilate_1 ) ]
        BaseSecretComposite.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SecretComposite"
        [ ( "jm_encrypt_1", jm_encrypt_1 ), ( "jm_decrypt_1", jm_decrypt_1 ), ( "jm_mutilate_1", jm_mutilate_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "secretKey", "" ), ( "cipher", "" ), ( "key", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseSecretComposite.jinit_0 JR.this []),
                JR.exec (JR.setField "byteUtil" "" JR.this (JR.callStatic ByteUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "secretKey" "" JR.this (JR.local "secretKey")), 
                    JR.exec (JR.setField "cipher" "" JR.this (JR.local "cipher")), 
                    JR.exec (JR.setField "key" "" JR.this (JR.local "key")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_encrypt_1 : JR.Method
jm_encrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setLocal "array" "" (JR.invoke "mutilate_1" JR.this [ (JR.local "array") ])), 
                    JR.exec (JR.invoke "init_2" (JR.thisField "cipher") [ (JR.namedStatic "Cipher.jstatic_ENCRYPT_MODE"), (JR.thisField "secretKey") ]), 
                    JR.return (JR.invoke "doFinal_1" (JR.thisField "cipher") [ (JR.local "array") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_decrypt_1 : JR.Method
jm_decrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_2" (JR.thisField "cipher") [ (JR.namedStatic "Cipher.jstatic_DECRYPT_MODE"), (JR.thisField "secretKey") ]), 
                    JR.return (JR.invoke "mutilate_1" JR.this [ (JR.invoke "doFinal_1" (JR.thisField "cipher") [ (JR.local "array") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_mutilate_1 : JR.Method
jm_mutilate_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "key"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66759 -> (JR.setLocal "index" "I" (JR.lit jwN66759))) JR.increment) ]) (JR.run [ 
                        JR.declare "value" "B" (JR.aget (JR.thisField "key") (JR.local "index")), 
                        JR.ifElse (JR.and (JR.map2 JR.less (JR.cast "I" (JR.local "value")) (JR.int 8)) (JR.map2 JR.greater (JR.cast "I" (JR.local "value")) (JR.int 0))) (JR.run [ 
                            JR.exec (JR.setLocal "array" "" (JR.invoke "xorByte_2" (JR.thisField "byteUtil") [ (JR.local "array"), (JR.cast "I" (JR.local "value")) ])) ]) identity ]) ], 
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

