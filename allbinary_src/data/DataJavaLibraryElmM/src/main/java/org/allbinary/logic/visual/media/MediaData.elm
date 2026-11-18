module Org.Allbinary.Logic.Visual.Media.MediaData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.media
-}

import JR
import Org.Allbinary.Logic.Visual.Media.MediaDataFactory as MediaDataFactory
import Org.Allbinary.Logic.Visual.Media.MediaTypeData as MediaTypeData
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "MediaData"


jchain : List String
jchain =
    [ "MediaData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "type", JR.defaultOf "" ), ( "extension", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "getType_0", jm_getType_0 )
        , ( "getExtension_0", jm_getExtension_0 )
        , ( "isConvertableTo_1", jm_isConvertableTo_1 )
        , ( "toString_0", jm_toString_0 )
        , ( "get_1", jm_get_1 )
        , ( "getDefault_0", jm_getDefault_0 )
        , ( "toHashMap_0", jm_toHashMap_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MediaData"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_getExtension_0", jm_getExtension_0 ), ( "jm_isConvertableTo_1", jm_isConvertableTo_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_get_1", jm_get_1 ), ( "jm_getDefault_0", jm_getDefault_0 ), ( "jm_toHashMap_0", jm_toHashMap_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_hashMap", jstatic_hashMap ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_hashMap : JR.M
jstatic_hashMap s =
    JR.static "MediaData" jclinit "hashMap"
        (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "a_Name", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "a_Name")), 
                    JR.exec (JR.setField "extension" "" JR.this (JR.concat (JR.str ".") (JR.thisField "name"))), 
                    JR.exec (JR.setField "type" "" JR.this (JR.field "NOT_RESIZABLE_MEDIA" (JR.callStatic MediaTypeData.jm_getInstance_0 []))), 
                    JR.exec (JR.invoke "put_2" jstatic_hashMap [ (JR.local "a_Name"), JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
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


jm_getExtension_0 : JR.Method
jm_getExtension_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "extension") ])
        (jregister jheap)
        jthis
        jargs


jm_isConvertableTo_1 : JR.Method
jm_isConvertableTo_1 jheap jthis jargs =
    JR.method [ ( "mediaData", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.equals JR.this (JR.field "GIF" (JR.callStatic MediaDataFactory.jm_getInstance_0 []))) (JR.map2 JR.equals (JR.local "mediaData") (JR.field "JPG" (JR.callStatic MediaDataFactory.jm_getInstance_0 [])))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "a_Name", "" ) ] ""
        (JR.run [ 
                    JR.declare "mediaData" "" (JR.invoke "get_1" jstatic_hashMap [ (JR.local "a_Name") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "mediaData") JR.null) (JR.run [ 
                        JR.return (JR.local "mediaData") ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Such MediaData") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDefault_0 : JR.Method
jm_getDefault_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "JPG" (JR.callStatic MediaDataFactory.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_toHashMap_0 : JR.Method
jm_toHashMap_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_hashMap ])
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

