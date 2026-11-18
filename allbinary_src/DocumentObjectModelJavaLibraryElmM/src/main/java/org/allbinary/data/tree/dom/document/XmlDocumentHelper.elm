module Org.Allbinary.Data.Tree.Dom.Document.XmlDocumentHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom.document
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Logic.Java.Characters.CharacterSetData as CharacterSetData
import JByteArrayOutputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "XmlDocumentHelper"


jchain : List String
jchain =
    [ "XmlDocumentHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "INDENT_NUMBER", JR.defaultOf "" ), ( "indent", JR.defaultOf "I" ), ( "ignoreDeclaration", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_2", jm_init_2 )
        , ( "createTransformer_2", jm_createTransformer_2 )
        , ( "createTransformer_0", jm_createTransformer_0 )
        , ( "format_1", jm_format_1 )
        , ( "formatWithTransformer_2", jm_formatWithTransformer_2 )
        , ( "toString_1", jm_toString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XmlDocumentHelper"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_createTransformer_2", jm_createTransformer_2 ), ( "jm_createTransformer_0", jm_createTransformer_0 ), ( "jm_format_1", jm_format_1 ), ( "jm_formatWithTransformer_2", jm_formatWithTransformer_2 ), ( "jm_toString_1", jm_toString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "XmlDocumentHelper" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "INDENT_NUMBER" "" JR.this (JR.str "indent-number")),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.int 4), (JR.bool True) ]) ]) ])
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


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "indent", "I" ), ( "ignoreDeclaration", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "indent" "I" JR.this (JR.local "indent")), 
                    JR.exec (JR.setField "ignoreDeclaration" "Z" JR.this (JR.local "ignoreDeclaration")) ])
        (jregister jheap)
        jthis
        jargs


jm_createTransformer_2 : JR.Method
jm_createTransformer_2 jheap jthis jargs =
    JR.method [ ( "indent", "I" ), ( "ignoreDeclaration", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "booleanFactory" "" (JR.callStatic BooleanFactory.jm_getInstance_0 []), 
                    JR.declare "transformerFactory" "" (JR.callStatic (JR.namedMethod "TransformerFactory.jm_newInstance_0") []), 
                    JR.exec (JR.invoke "setAttribute_2" (JR.local "transformerFactory") [ (JR.thisField "INDENT_NUMBER"), (JR.local "indent") ]), 
                    JR.declare "transformer" "" (JR.invoke "newTransformer_0" (JR.local "transformerFactory") []), 
                    JR.exec (JR.invoke "setOutputProperty_2" (JR.local "transformer") [ (JR.namedStatic "OutputKeys.jstatic_ENCODING"), (JR.field "UTF_8" (JR.callStatic CharacterSetData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setOutputProperty_2" (JR.local "transformer") [ (JR.namedStatic "OutputKeys.jstatic_OMIT_XML_DECLARATION"), (JR.cond (JR.local "ignoreDeclaration") (JR.field "YES" (JR.local "booleanFactory")) (JR.field "NO" (JR.local "booleanFactory"))) ]), 
                    JR.exec (JR.invoke "setOutputProperty_2" (JR.local "transformer") [ (JR.namedStatic "OutputKeys.jstatic_INDENT"), (JR.field "YES" (JR.local "booleanFactory")) ]), 
                    JR.return (JR.local "transformer") ])
        (jregister jheap)
        jthis
        jargs


jm_createTransformer_0 : JR.Method
jm_createTransformer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "currentIndent" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "currentIgnoreDeclaration" "Z" (JR.lit (JR.defaultOf "Z")), 
                    (JR.run [ 
                        JR.exec (JR.setLocal "currentIndent" "I" (JR.thisField "indent")), 
                        JR.exec (JR.setLocal "currentIgnoreDeclaration" "Z" (JR.thisField "ignoreDeclaration")) ]), 
                    JR.return (JR.invoke "createTransformer_2" JR.this [ (JR.local "currentIndent"), (JR.local "currentIgnoreDeclaration") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_format_1 : JR.Method
jm_format_1 jheap jthis jargs =
    JR.method [ ( "xmlString", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "formatWithTransformer_2" JR.this [ (JR.local "xmlString"), (JR.invoke "createTransformer_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_formatWithTransformer_2 : JR.Method
jm_formatWithTransformer_2 jheap jthis jargs =
    JR.method [ ( "xmlString", "" ), ( "transformer", "" ) ] ""
        (JR.run [ 
                    JR.declare "src" "" (JR.new (JR.namedMethod "InputSource.jnew_1") [ (JR.new (JR.namedMethod "StringReader.jnew_1") [ (JR.local "xmlString") ]) ]), 
                    JR.declare "document" "" (JR.invoke "parse_1" (JR.invoke "newDocumentBuilder_0" (JR.callStatic (JR.namedMethod "DocumentBuilderFactory.jm_newInstance_0") []) []) [ (JR.local "src") ]), 
                    JR.declare "out" "" (JR.new (JR.namedMethod "StringWriter.jnew_0") []), 
                    JR.exec (JR.invoke "transform_2" (JR.local "transformer") [ (JR.new (JR.namedMethod "DOMSource.jnew_1") [ (JR.local "document") ]), (JR.new (JR.namedMethod "StreamResult.jnew_1") [ (JR.local "out") ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "out") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_1 : JR.Method
jm_toString_1 jheap jthis jargs =
    JR.method [ ( "document", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "domSource" "" (JR.new (JR.namedMethod "DOMSource.jnew_1") [ (JR.local "document") ]), 
                        JR.declare "byteArrayOutputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.declare "streamResult" "" (JR.new (JR.namedMethod "StreamResult.jnew_1") [ (JR.local "byteArrayOutputStream") ]), 
                        JR.declare "copyTransformerFactory" "" (JR.callStatic (JR.namedMethod "TransformerFactory.jm_newInstance_0") []), 
                        JR.declare "copyTransformer" "" (JR.invoke "newTransformer_0" (JR.local "copyTransformerFactory") []), 
                        JR.exec (JR.invoke "transform_2" (JR.local "copyTransformer") [ (JR.local "domSource"), (JR.local "streamResult") ]), 
                        JR.return (JR.invoke "toString_0" (JR.local "byteArrayOutputStream") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
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

