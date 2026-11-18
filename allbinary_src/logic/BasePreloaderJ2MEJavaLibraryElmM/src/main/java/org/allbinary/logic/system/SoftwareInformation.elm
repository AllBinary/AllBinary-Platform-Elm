module Org.Allbinary.Logic.System.SoftwareInformation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.KotlinUtil as KotlinUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "SoftwareInformation"


jchain : List String
jchain =
    [ "SoftwareInformation" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "shortName", JR.defaultOf "" ), ( "version", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "getVersion_0", jm_getVersion_0 )
        , ( "toShortString_0", jm_toShortString_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SoftwareInformation"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_getVersion_0", jm_getVersion_0 ), ( "jm_toShortString_0", jm_toShortString_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "version", "" ), ( "shortName", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "version" "" JR.this (JR.local "version")), 
                    JR.exec (JR.setField "shortName" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "shortName") ]) [ (JR.callStatic KotlinUtil.jm_getShortName_0 []) ]) [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getVersion_0 : JR.Method
jm_getVersion_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "version") ])
        (jregister jheap)
        jthis
        jargs


jm_toShortString_0 : JR.Method
jm_toShortString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "shortName") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "NAME" "" (JR.str "Name: "), 
                    JR.declare "VERSION" "" (JR.str "Version: "), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "NAME") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "VERSION") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getVersion_0" JR.this []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

