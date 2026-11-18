module Org.Allbinary.Layer.BasicLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "BasicLayerProcessor"


jchain : List String
jchain =
    [ "BasicLayerProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "process_1", jm_process_1 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicLayerProcessor"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_process_1", jm_process_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_LAYER_PROCESSOR", jstatic_NULL_LAYER_PROCESSOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_LAYER_PROCESSOR : JR.M
jstatic_NULL_LAYER_PROCESSOR s =
    JR.static "BasicLayerProcessor" jclinit "NULL_LAYER_PROCESSOR"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "layerInterface") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "layerInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
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

