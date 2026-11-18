module Org.Allbinary.Data.Tree.Dom.ModDomHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import Org.Allbinary.Data.Tree.Dom.DomData as DomData


jclass : String
jclass =
    "ModDomHelper"


jchain : List String
jchain =
    [ "ModDomHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "createTextNode_3", jm_createTextNode_3 )
        , ( "createValueNode_2", jm_createValueNode_2 )
        , ( "createNameNode_2", jm_createNameNode_2 )
        , ( "createIndexNode_2", jm_createIndexNode_2 )
        , ( "createNameValueNodes_4", jm_createNameValueNodes_4 )
        , ( "createNameValueNodes_3", jm_createNameValueNodes_3 )
        , ( "createNameValueIndexNodes_4", jm_createNameValueIndexNodes_4 )
        , ( "createNodeWithValueNodes_3", jm_createNodeWithValueNodes_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ModDomHelper"
        [ ( "jm_createTextNode_3", jm_createTextNode_3 ), ( "jm_createValueNode_2", jm_createValueNode_2 ), ( "jm_createNameNode_2", jm_createNameNode_2 ), ( "jm_createIndexNode_2", jm_createIndexNode_2 ), ( "jm_createNameValueNodes_4", jm_createNameValueNodes_4 ), ( "jm_createNameValueNodes_3", jm_createNameValueNodes_3 ), ( "jm_createNameValueIndexNodes_4", jm_createNameValueIndexNodes_4 ), ( "jm_createNodeWithValueNodes_3", jm_createNodeWithValueNodes_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_createTextNode_3 : JR.Method
jm_createTextNode_3 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "name", "" ), ( "text", "" ) ] ""
        (JR.run [ 
                    JR.declare "newValueNode" "" (JR.invoke "createElement_1" (JR.local "document") [ (JR.local "name") ]), 
                    JR.declare "newValueTextNode" "" (JR.invoke "createTextNode_1" (JR.local "document") [ (JR.local "text") ]), 
                    JR.exec (JR.invoke "appendChild_1" (JR.local "newValueNode") [ (JR.local "newValueTextNode") ]), 
                    JR.return (JR.local "newValueNode") ])
        (jregister jheap)
        jthis
        jargs


jm_createValueNode_2 : JR.Method
jm_createValueNode_2 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "text", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_createTextNode_3 [ (JR.local "document"), DomData.jstatic_VALUE, (JR.local "text") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createNameNode_2 : JR.Method
jm_createNameNode_2 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "text", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_createTextNode_3 [ (JR.local "document"), DomData.jstatic_NAME, (JR.local "text") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createIndexNode_2 : JR.Method
jm_createIndexNode_2 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_createTextNode_3 [ (JR.local "document"), DomData.jstatic_INDEX, (JR.invoke "toString_0" (JR.cast "I" (JR.local "index")) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createNameValueNodes_4 : JR.Method
jm_createNameValueNodes_4 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "elementName", "" ), ( "nameText", "" ), ( "valueText", "" ) ] ""
        (JR.run [ 
                    JR.declare "newNode" "" (JR.invoke "createElement_1" (JR.local "document") [ (JR.local "elementName") ]), 
                    JR.exec (JR.invoke "appendChild_1" (JR.local "newNode") [ (JR.callStatic jm_createNameNode_2 [ (JR.local "document"), (JR.local "nameText") ]) ]), 
                    JR.exec (JR.invoke "appendChild_1" (JR.local "newNode") [ (JR.callStatic jm_createValueNode_2 [ (JR.local "document"), (JR.local "valueText") ]) ]), 
                    JR.return (JR.local "newNode") ])
        (jregister jheap)
        jthis
        jargs


jm_createNameValueNodes_3 : JR.Method
jm_createNameValueNodes_3 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "elementNameAndNameText", "" ), ( "valueText", "" ) ] ""
        (JR.run [ 
                    JR.declare "newNode" "" (JR.callStatic jm_createNameValueNodes_4 [ (JR.local "document"), (JR.local "elementNameAndNameText"), (JR.local "elementNameAndNameText"), (JR.local "valueText") ]), 
                    JR.return (JR.local "newNode") ])
        (jregister jheap)
        jthis
        jargs


jm_createNameValueIndexNodes_4 : JR.Method
jm_createNameValueIndexNodes_4 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "elementNameAndNameText", "" ), ( "index", "I" ), ( "valueText", "" ) ] ""
        (JR.run [ 
                    JR.declare "newNode" "" (JR.callStatic jm_createNameValueNodes_3 [ (JR.local "document"), (JR.local "elementNameAndNameText"), (JR.local "valueText") ]), 
                    JR.exec (JR.invoke "appendChild_1" (JR.local "newNode") [ (JR.callStatic jm_createIndexNode_2 [ (JR.local "document"), (JR.local "index") ]) ]), 
                    JR.return (JR.local "newNode") ])
        (jregister jheap)
        jthis
        jargs


jm_createNodeWithValueNodes_3 : JR.Method
jm_createNodeWithValueNodes_3 jheap jthis jargs =
    JR.method [ ( "document", "" ), ( "rootNode", "" ), ( "hashMap", "" ) ] ""
        (JR.run [ 
                    JR.declare "node" "" (JR.invoke "createElement_1" (JR.local "document") [ (JR.local "rootNode") ]), 
                    JR.return (JR.callStatic jm_createNodeWithValueNodes_3 [ (JR.local "document"), (JR.local "node"), (JR.local "hashMap") ]) ])
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

