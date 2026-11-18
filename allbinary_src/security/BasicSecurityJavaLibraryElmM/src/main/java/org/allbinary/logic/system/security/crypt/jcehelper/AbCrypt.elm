module Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.AbCrypt exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt.jcehelper
-}

import JR
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.BaseSecretComposite as BaseSecretComposite
import Org.Bouncycastle.Jce.Provider.BouncyCastleProvider as BouncyCastleProvider
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Init.Crypt.Jcehelper.CryptInterface as CryptInterface
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.KeySpecFactory as KeySpecFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.SecretComposite as SecretComposite
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "AbCrypt"


jchain : List String
jchain =
    [ "AbCrypt" ]
        ++ CryptInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "tsUtil", JR.defaultOf "" ), ( "secretComposite", JR.defaultOf "" ), ( "algorithm", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "encrypt_1", jm_encrypt_1 )
        , ( "decrypt_1", jm_decrypt_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbCrypt"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_encrypt_1", jm_encrypt_1 ), ( "jm_decrypt_1", jm_decrypt_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "algorithm", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "secretComposite" "" JR.this BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "algorithm" "" JR.this (JR.local "algorithm")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "keyAsString", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.callStatic (JR.namedMethod "Security.jm_addProvider_1") [ (JR.new BouncyCastleProvider.jnew_0 []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                        JR.declare "key" "" (JR.invoke "getByteArray_1" (JR.thisField "tsUtil") [ (JR.local "keyAsString") ]), 
                        JR.declare "keySpec" "" (JR.invoke "getInstance_2" (JR.callStatic KeySpecFactory.jm_getInstance_0 []) [ (JR.thisField "algorithm"), (JR.local "key") ]), 
                        JR.declare "keyFactory" "" (JR.callStatic (JR.namedMethod "SecretKeyFactory.jm_getInstance_1") [ (JR.thisField "algorithm") ]), 
                        JR.declare "secretKey" "" (JR.invoke "generateSecret_1" (JR.local "keyFactory") [ (JR.local "keySpec") ]), 
                        JR.declare "cipher" "" (JR.callStatic (JR.namedMethod "Cipher.jm_getInstance_1") [ (JR.thisField "algorithm") ]), 
                        JR.exec (JR.setField "secretComposite" "" JR.this (JR.new SecretComposite.jnew_3 [ (JR.local "secretKey"), (JR.local "cipher"), (JR.local "key") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "init Failed"), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_encrypt_1 : JR.Method
jm_encrypt_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.invoke "encrypt_1" (JR.thisField "secretComposite") [ (JR.local "array") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
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
                        JR.return (JR.invoke "decrypt_1" (JR.thisField "secretComposite") [ (JR.local "array") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "decrypt Failed"), JR.this, (JR.str "decrypt"), (JR.local "e") ]), 
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

