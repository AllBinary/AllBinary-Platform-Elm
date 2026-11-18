module Org.Allbinary.Data.Tree.Dom.Document.DomDocumentFileHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom.document
-}

import JR
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.Logic.Io.DataOutputStreamFactory as DataOutputStreamFactory
import Org.Allbinary.Data.Tree.Dom.Document.DomDocumentHelper as DomDocumentHelper
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil


jclass : String
jclass =
    "DomDocumentFileHelper"


jchain : List String
jchain =
    [ "DomDocumentFileHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "createDocument_1", jm_createDocument_1 )
        , ( "save_2", jm_save_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomDocumentFileHelper"
        [ ( "jm_createDocument_1", jm_createDocument_1 ), ( "jm_save_2", jm_save_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_createDocument_1 : JR.Method
jm_createDocument_1 jheap jthis jargs =
    JR.method [ ( "xmlFile", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.callStatic DomDocumentHelper.jm_create_1 [ (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "xmlFile") ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_save_2 : JR.Method
jm_save_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "document", "" ) ] ""
        (JR.run [ 
                    JR.declare "dataOutputStream" "" JR.null, 
                    JR.try (JR.run [ 
                        JR.declare "copyTransformerFactory" "" (JR.callStatic (JR.namedMethod "TransformerFactory.jm_newInstance_0") []), 
                        JR.declare "copyTransformer" "" (JR.invoke "newTransformer_0" (JR.local "copyTransformerFactory") []), 
                        JR.declare "domSource" "" (JR.new (JR.namedMethod "DOMSource.jnew_1") [ (JR.local "document") ]), 
                        JR.ifElse (JR.invoke "isFile_0" (JR.local "file") []) (JR.run [ 
                            JR.exec (JR.invoke "delete_0" (JR.local "file") []) ]) identity, 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "file") []), 
                        JR.exec (JR.setLocal "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "file") ])), 
                        JR.declare "streamResult" "" (JR.new (JR.namedMethod "StreamResult.jnew_1") [ (JR.local "dataOutputStream") ]), 
                        JR.exec (JR.invoke "transform_2" (JR.local "copyTransformer") [ (JR.local "domSource"), (JR.local "streamResult") ]), 
                        JR.exec (JR.invoke "flush_0" (JR.local "dataOutputStream") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "dataOutputStream") ]) ]) ])
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

