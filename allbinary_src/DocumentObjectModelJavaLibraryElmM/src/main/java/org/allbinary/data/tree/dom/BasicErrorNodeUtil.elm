module Org.Allbinary.Data.Tree.Dom.BasicErrorNodeUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import Org.Allbinary.Business.Error.ErrorData as ErrorData
import Org.Allbinary.Data.Tree.Dom.ModDomHelper as ModDomHelper


jclass : String
jclass =
    "BasicErrorNodeUtil"


jchain : List String
jchain =
    [ "BasicErrorNodeUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "get_2", jm_get_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicErrorNodeUtil"
        [ ( "jm_get_2", jm_get_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_get_2 : JR.Method
jm_get_2 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "errorText", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "node" "" (JR.invoke "createElement_1" (JR.local "document") [ (JR.field "NAME" (JR.callStatic ErrorData.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendChild_1" (JR.local "node") [ (JR.callStatic ModDomHelper.jm_createNameValueNodes_3 [ (JR.local "document"), (JR.field "TEXT" (JR.callStatic ErrorData.jm_getInstance_0 [])), (JR.local "errorText") ]) ]), 
                        JR.return (JR.local "node") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Error Node Creation Failure") ]) ]) ) ] identity ])
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

