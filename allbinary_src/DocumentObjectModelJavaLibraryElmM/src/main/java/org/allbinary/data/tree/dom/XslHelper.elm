module Org.Allbinary.Data.Tree.Dom.XslHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import JByteArrayOutputStream
import Org.Allbinary.Data.Tree.Dom.Document.XmlDocumentHelper as XmlDocumentHelper


jclass : String
jclass =
    "XslHelper"


jchain : List String
jchain =
    [ "XslHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "translate_3", jm_translate_3 )
        , ( "translate_4", jm_translate_4 )
        , ( "translateTemplate_2", jm_translateTemplate_2 )
        , ( "translate_2", jm_translate_2 )
        , ( "export_3", jm_export_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XslHelper"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_translate_3", jm_translate_3 ), ( "jm_translate_4", jm_translate_4 ), ( "jm_translateTemplate_2", jm_translateTemplate_2 ), ( "jm_translate_2", jm_translate_2 ), ( "jm_export_3", jm_export_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "XslHelper" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_translate_3 : JR.Method
jm_translate_3 jheap jthis jargs =
    JR.method [ ( "xsltStreamSource", "" ), ( "xmlStreamSource", "" ), ( "streamResult", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "transformerFactory" "" (JR.callStatic (JR.namedMethod "TransformerFactory.jm_newInstance_0") []), 
                        JR.declare "transformer" "" (JR.invoke "newTransformer_1" (JR.local "transformerFactory") [ (JR.local "xsltStreamSource") ]), 
                        JR.exec (JR.invoke "transform_2" (JR.local "transformer") [ (JR.local "xmlStreamSource"), (JR.local "streamResult") ]), 
                        JR.return (JR.invoke "getOutputStream_0" (JR.local "streamResult") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_translate_4 : JR.Method
jm_translate_4 jheap jthis jargs =
    JR.method [ ( "resolver", "" ), ( "xsltStreamSource", "" ), ( "xmlStreamSource", "" ), ( "streamResult", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "tFactory" "" (JR.callStatic (JR.namedMethod "TransformerFactory.jm_newInstance_0") []), 
                        JR.exec (JR.invoke "setURIResolver_1" (JR.local "tFactory") [ (JR.local "resolver") ]), 
                        JR.declare "transformer" "" (JR.invoke "newTransformer_1" (JR.local "tFactory") [ (JR.local "xsltStreamSource") ]), 
                        JR.exec (JR.invoke "transform_2" (JR.local "transformer") [ (JR.local "xmlStreamSource"), (JR.local "streamResult") ]), 
                        JR.return (JR.invoke "getOutputStream_0" (JR.local "streamResult") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_translateTemplate_2 : JR.Method
jm_translateTemplate_2 jheap jthis jargs =
    JR.method [ ( "templates", "" ), ( "xmlStreamSource", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "outputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.declare "streamResult" "" (JR.new (JR.namedMethod "StreamResult.jnew_1") [ (JR.local "outputStream") ]), 
                        JR.exec (JR.invoke "transform_2" (JR.invoke "newTransformer_0" (JR.local "templates") []) [ (JR.local "xmlStreamSource"), (JR.local "streamResult") ]), 
                        JR.return (JR.invoke "toString_0" (JR.invoke "getOutputStream_0" (JR.local "streamResult") []) []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_translate_2 : JR.Method
jm_translate_2 jheap jthis jargs =
    JR.method [ ( "xsltStreamSource", "" ), ( "xmlDocument", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "outputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.return (JR.invoke "toString_0" (JR.invoke "translate_3" JR.this [ (JR.local "xsltStreamSource"), (JR.new (JR.namedMethod "StreamSource.jnew_1") [ (JR.new (JR.namedMethod "StringBufferInputStream.jnew_1") [ (JR.callStatic XmlDocumentHelper.jm_toString_1 [ (JR.local "xmlDocument") ]) ]) ]), (JR.new (JR.namedMethod "StreamResult.jnew_1") [ (JR.local "outputStream") ]) ]) []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_export_3 : JR.Method
jm_export_3 jheap jthis jargs =
    JR.method [ ( "outputFile", "" ), ( "xsltFilePath", "" ), ( "xmlDocument", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "outputFile") []), 
                        JR.exec (JR.invoke "translate_3" JR.this [ (JR.new (JR.namedMethod "StreamSource.jnew_1") [ (JR.local "xsltFilePath") ]), (JR.new (JR.namedMethod "StreamSource.jnew_1") [ (JR.new (JR.namedMethod "StringBufferInputStream.jnew_1") [ (JR.callStatic XmlDocumentHelper.jm_toString_1 [ (JR.local "xmlDocument") ]) ]) ]), (JR.new (JR.namedMethod "StreamResult.jnew_1") [ (JR.local "outputFile") ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
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

