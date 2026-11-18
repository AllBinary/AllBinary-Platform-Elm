module Org.Allbinary.Logic.Util.Cache.CacheType exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "CacheType"


jchain : List String
jchain =
    [ "CacheType" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "vendor", JR.defaultOf "" ), ( "type", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getVendor_0", jm_getVendor_0 )
        , ( "getType_0", jm_getType_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CacheType"
        [ ( "jm_getVendor_0", jm_getVendor_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "vendor", "" ), ( "type", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "vendor" "" JR.this (JR.local "vendor")), 
                    JR.exec (JR.setField "type" "" JR.this (JR.local "type")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getVendor_0 : JR.Method
jm_getVendor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "vendor") ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "type") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "CacheType: Vendor: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getVendor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Type: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getType_0" JR.this []) ]), 
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

