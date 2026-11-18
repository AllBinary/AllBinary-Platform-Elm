module Org.Allbinary.Logic.System.Security.AbCryptUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security
-}

import JR
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.AbCrypt as AbCrypt
import JByteArrayOutputStream
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.KeySpecFactory as KeySpecFactory
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil


jclass : String
jclass =
    "AbCryptUtil"


jchain : List String
jchain =
    [ "AbCryptUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "streamUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "decrypt_2", jm_decrypt_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbCryptUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_decrypt_2", jm_decrypt_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbCryptUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "streamUtil" "" JR.this (JR.callStatic StreamUtil.jm_getInstance_0 [])),
                identity,
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


jm_decrypt_2 : JR.Method
jm_decrypt_2 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "key", "" ) ] ""
        (JR.run [ 
                    JR.declare "outputStream" "" JR.null, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "outputStream" "" (JR.invoke "get_3" (JR.thisField "streamUtil") [ (JR.local "inputStream"), (JR.new JByteArrayOutputStream.jnew_0 []), (JR.newArray "B" [ (JR.int 16384) ]) ])), 
                        JR.declare "abCrypt" "" (JR.new AbCrypt.jnew_1 [ (JR.field "DESEDE" (JR.callStatic KeySpecFactory.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "init_1" (JR.local "abCrypt") [ (JR.local "key") ]), 
                        JR.return (JR.invoke "decrypt_1" (JR.local "abCrypt") [ (JR.invoke "toByteArray_0" (JR.local "outputStream") []) ]) ]) [  ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.thisField "streamUtil") [ (JR.local "outputStream") ]), 
                        JR.exec (JR.invoke "close_1" (JR.thisField "streamUtil") [ (JR.local "inputStream") ]) ]) ])
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

