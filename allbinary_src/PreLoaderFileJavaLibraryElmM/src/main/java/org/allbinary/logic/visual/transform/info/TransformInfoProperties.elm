module Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.info
-}

import JR



jclass : String
jclass =
    "TransformInfoProperties"


jchain : List String
jchain =
    [ "TransformInfoProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "label", JR.defaultOf "" ), ( "description", JR.defaultOf "" ), ( "objectFileName", JR.defaultOf "" ), ( "objectConfigFileName", JR.defaultOf "" ), ( "templateFileName", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setName_1", jm_setName_1 )
        , ( "setDescription_1", jm_setDescription_1 )
        , ( "setViewFile_1", jm_setViewFile_1 )
        , ( "setTemplateFile_1", jm_setTemplateFile_1 )
        , ( "setObjectConfigFile_1", jm_setObjectConfigFile_1 )
        , ( "getName_0", jm_getName_0 )
        , ( "getLabel_0", jm_getLabel_0 )
        , ( "getDescription_0", jm_getDescription_0 )
        , ( "getViewFile_0", jm_getViewFile_0 )
        , ( "getTemplateFile_0", jm_getTemplateFile_0 )
        , ( "getObjectConfigFile_0", jm_getObjectConfigFile_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TransformInfoProperties"
        [ ( "jm_setName_1", jm_setName_1 ), ( "jm_setDescription_1", jm_setDescription_1 ), ( "jm_setViewFile_1", jm_setViewFile_1 ), ( "jm_setTemplateFile_1", jm_setTemplateFile_1 ), ( "jm_setObjectConfigFile_1", jm_setObjectConfigFile_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getLabel_0", jm_getLabel_0 ), ( "jm_getDescription_0", jm_getDescription_0 ), ( "jm_getViewFile_0", jm_getViewFile_0 ), ( "jm_getTemplateFile_0", jm_getTemplateFile_0 ), ( "jm_getObjectConfigFile_0", jm_getObjectConfigFile_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "label", "" ), ( "description", "" ), ( "objectFileName", "" ), ( "objectConfigFileName", "" ), ( "templateFileName", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "label" "" JR.this (JR.local "label")), 
                    JR.exec (JR.setField "description" "" JR.this (JR.local "description")), 
                    JR.exec (JR.setField "objectFileName" "" JR.this (JR.local "objectFileName")), 
                    JR.exec (JR.setField "templateFileName" "" JR.this (JR.local "templateFileName")), 
                    JR.exec (JR.setField "objectConfigFileName" "" JR.this (JR.local "objectConfigFileName")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDescription_1 : JR.Method
jm_setDescription_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "description" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setViewFile_1 : JR.Method
jm_setViewFile_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "objectFileName" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setTemplateFile_1 : JR.Method
jm_setTemplateFile_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "templateFileName" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setObjectConfigFile_1 : JR.Method
jm_setObjectConfigFile_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "objectConfigFileName" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getLabel_0 : JR.Method
jm_getLabel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "label") ])
        (jregister jheap)
        jthis
        jargs


jm_getDescription_0 : JR.Method
jm_getDescription_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "description") ])
        (jregister jheap)
        jthis
        jargs


jm_getViewFile_0 : JR.Method
jm_getViewFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "objectFileName") ])
        (jregister jheap)
        jthis
        jargs


jm_getTemplateFile_0 : JR.Method
jm_getTemplateFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "templateFileName") ])
        (jregister jheap)
        jthis
        jargs


jm_getObjectConfigFile_0 : JR.Method
jm_getObjectConfigFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "objectConfigFileName") ])
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

