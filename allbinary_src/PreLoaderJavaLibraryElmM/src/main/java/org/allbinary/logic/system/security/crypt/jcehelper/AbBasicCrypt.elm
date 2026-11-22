module Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.AbBasicCrypt exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt.jcehelper
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Init.Crypt.Jcehelper.CryptInterface as CryptInterface
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.KeySpecFactory as KeySpecFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "AbBasicCrypt"


jchain : List String
jchain =
    [ "AbBasicCrypt" ]
        ++ CryptInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "cipher", JR.defaultOf "" ), ( "secretKey", JR.defaultOf "" ), ( "algorithm", JR.defaultOf "" ), ( "key", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "encrypt_1", jm_encrypt_1 )
        , ( "decrypt_1", jm_decrypt_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbBasicCrypt"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_encrypt_1", jm_encrypt_1 ), ( "jm_decrypt_1", jm_decrypt_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "algorithm", "" ), ( "key", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setField "algorithm" "" JR.this (JR.local "algorithm")), 
                        JR.exec (JR.setField "key" "" JR.this (JR.invoke "getBytes_0" (JR.local "key") [])), 
                        JR.exec (JR.invoke "init_0" JR.this []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "AbCrypt(alg,key)"), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "sunJce" "" (JR.new (JR.namedMethod "SunJCE.jnew_0") []), 
                        JR.exec (JR.callStatic (JR.namedMethod "Security.jm_addProvider_1") [ (JR.local "sunJce") ]), 
                        JR.declare "keySpec" "" (JR.invoke "getInstance_2" (JR.callStatic KeySpecFactory.jm_getInstance_0 []) [ (JR.thisField "algorithm"), (JR.thisField "key") ]), 
                        JR.declare "keyFactory" "" (JR.callStatic (JR.namedMethod "SecretKeyFactory.jm_getInstance_1") [ (JR.thisField "algorithm") ]), 
                        JR.exec (JR.setField "secretKey" "" JR.this (JR.invoke "generateSecret_1" (JR.local "keyFactory") [ (JR.local "keySpec") ])), 
                        JR.exec (JR.setField "cipher" "" JR.this (JR.callStatic (JR.namedMethod "Cipher.jm_getInstance_1") [ (JR.thisField "algorithm") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "init Failed"), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_encrypt_1 : JR.Method
jm_encrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "init_2" (JR.thisField "cipher") [ (JR.namedStatic "Cipher.jstatic_ENCRYPT_MODE"), (JR.thisField "secretKey") ]), 
                        JR.declare "ivArray" "" (JR.invoke "getEncoded_0" (JR.thisField "secretKey") []), 
                        JR.declare "encrypted" "" (JR.invoke "doFinal_1" (JR.thisField "cipher") [ (JR.local "array") ]), 
                        JR.declare "result" "" (JR.newArray "B" [ (JR.map2 JR.add (JR.alength (JR.local "ivArray")) (JR.alength (JR.local "encrypted"))) ]), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "ivArray Length: ") (JR.alength (JR.local "ivArray"))), JR.this, (JR.str "encrypt") ]), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "ivArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67614 -> (JR.setLocal "index" "I" (JR.lit jwN67614))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "result") (\jaN67505 -> JR.andThen (JR.local "index") (\jiN67505 -> (JR.aset (JR.lit jaN67505) (JR.lit jiN67505) (JR.aget (JR.local "ivArray") (JR.local "index")))))) ]) ], 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "encrypted"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67766 -> (JR.setLocal "index" "I" (JR.lit jwN67766))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "result") (\jaN67640 -> JR.andThen (JR.map2 JR.add (JR.local "index") (JR.alength (JR.local "ivArray"))) (\jiN67640 -> (JR.aset (JR.lit jaN67640) (JR.lit jiN67640) (JR.aget (JR.local "encrypted") (JR.local "index")))))) ]) ], 
                        JR.return (JR.local "result") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "Encrypt Failed"), JR.this, (JR.str "encrypt"), (JR.local "e") ]), 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_decrypt_1 : JR.Method
jm_decrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "init_2" (JR.thisField "cipher") [ (JR.namedStatic "Cipher.jstatic_DECRYPT_MODE"), (JR.thisField "secretKey") ]), 
                        JR.declare "ivArray" "" (JR.newArray "B" [ (JR.int 8) ]), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.int 8)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68145 -> (JR.setLocal "index" "I" (JR.lit jwN68145))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "ivArray") (\jaN68052 -> JR.andThen (JR.local "index") (\jiN68052 -> (JR.aset (JR.lit jaN68052) (JR.lit jiN68052) (JR.aget (JR.local "array") (JR.local "index")))))) ]) ], 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "ivArray Length: ") (JR.alength (JR.local "ivArray"))), JR.this, (JR.str "encrypt") ]), 
                        JR.declare "result" "" (JR.newArray "B" [ (JR.map2 JR.sub (JR.alength (JR.local "array")) (JR.alength (JR.local "ivArray"))) ]), 
                        JR.run [ JR.declare "index" "I" (JR.alength (JR.local "ivArray")), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "array"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68452 -> (JR.setLocal "index" "I" (JR.lit jwN68452))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "result") (\jaN68314 -> JR.andThen (JR.map2 JR.sub (JR.local "index") (JR.alength (JR.local "ivArray"))) (\jiN68314 -> (JR.aset (JR.lit jaN68314) (JR.lit jiN68314) (JR.aget (JR.local "array") (JR.local "index")))))) ]) ], 
                        JR.declare "decrypted" "" (JR.invoke "doFinal_1" (JR.thisField "cipher") [ (JR.local "result") ]), 
                        JR.return (JR.local "result") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "decrypt Failed"), JR.this, (JR.str "decrypt"), (JR.local "e") ]), 
                        JR.return JR.null ]) ) ] identity ])
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

