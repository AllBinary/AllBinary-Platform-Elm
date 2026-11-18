module Org.Allbinary.Init.Crypt.Jcehelper.BasicCryptUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.init.crypt.jcehelper
-}

import JR
import JByteArrayInputStream
import JByteArrayOutputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "BasicCryptUtil"


jchain : List String
jchain =
    [ "BasicCryptUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "XML_START", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getDecryptedInputStream_2", jm_getDecryptedInputStream_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicCryptUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getDecryptedInputStream_2", jm_getDecryptedInputStream_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicCryptUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "XML_START" "" JR.this (JR.str "<?xml")),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getDecryptedInputStream_2 : JR.Method
jm_getDecryptedInputStream_2 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "cryptInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "buffer" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                    JR.declare "ch" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.while (JR.bool True) (JR.run [ 
                        JR.exec (JR.setLocal "ch" "I" (JR.invoke "read_0" (JR.local "inputStream") [])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "ch") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.break ]) identity, 
                        JR.exec (JR.invoke "write_1" (JR.local "buffer") [ (JR.local "ch") ]) ]), 
                    JR.declare "decrypted" "" (JR.invoke "decrypt_1" (JR.local "cryptInterface") [ (JR.invoke "toByteArray_0" (JR.local "buffer") []) ]), 
                    JR.declare "decryptedString" "" (JR.withState JR.newString [ (JR.local "decrypted") ]), 
                    JR.declare "index" "I" (JR.invoke "indexOf_1" (JR.local "decryptedString") [ (JR.thisField "XML_START") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "index") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "decryptedString" "" (JR.invoke "substring_1" (JR.local "decryptedString") [ (JR.local "index") ])) ]) identity, 
                    JR.return (JR.new JByteArrayInputStream.jnew_1 [ (JR.invoke "getByteArray_1" (JR.thisField "tsUtil") [ (JR.local "decryptedString") ]) ]) ])
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

