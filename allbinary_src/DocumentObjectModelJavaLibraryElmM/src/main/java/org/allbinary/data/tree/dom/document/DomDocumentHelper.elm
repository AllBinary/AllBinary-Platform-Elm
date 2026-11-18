module Org.Allbinary.Data.Tree.Dom.Document.DomDocumentHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom.document
-}

import JR
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import JSystem


jclass : String
jclass =
    "DomDocumentHelper"


jchain : List String
jchain =
    [ "DomDocumentHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "create_0", jm_create_0 )
        , ( "create_1", jm_create_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomDocumentHelper"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_create_0", jm_create_0 ), ( "jm_create_1", jm_create_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonPhoneStrings" "" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []), 
                    JR.exec (JR.callStatic JSystem.jm_setProperty_2 [ (JR.str "jdk.xml.maxElementDepth"), (JR.field "ZERO" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.callStatic JSystem.jm_setProperty_2 [ (JR.str "jdk.xml.xpathExprOpLimit"), (JR.field "ZERO" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.callStatic JSystem.jm_setProperty_2 [ (JR.str "jdk.xml.xpathTotalOpLimit"), (JR.field "ZERO" (JR.local "commonPhoneStrings")) ]), 
                    JR.declare "LIMIT" "" (JR.str "500000"), 
                    JR.exec (JR.callStatic JSystem.jm_setProperty_2 [ (JR.str "jdk.xml.maxGeneralEntitySizeLimit"), (JR.local "LIMIT") ]), 
                    JR.exec (JR.callStatic JSystem.jm_setProperty_2 [ (JR.str "jdk.xml.totalEntitySizeLimit"), (JR.local "LIMIT") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_create_0 : JR.Method
jm_create_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "factory" "" (JR.callStatic (JR.namedMethod "DocumentBuilderFactory.jm_newInstance_0") []), 
                        JR.declare "builder" "" (JR.invoke "newDocumentBuilder_0" (JR.local "factory") []), 
                        JR.declare "document" "" (JR.invoke "newDocument_0" (JR.local "builder") []), 
                        JR.return (JR.local "document") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_create_1 : JR.Method
jm_create_1 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "factory" "" (JR.callStatic (JR.namedMethod "DocumentBuilderFactory.jm_newInstance_0") []), 
                        JR.declare "builder" "" (JR.invoke "newDocumentBuilder_0" (JR.local "factory") []), 
                        JR.declare "document" "" (JR.invoke "parse_1" (JR.local "builder") [ (JR.local "inputStream") ]), 
                        JR.return (JR.local "document") ]) [ ( [ "Exception" ], "e", (JR.run [ 
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

