module Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoPropertiesFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.info
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Data.Tree.Dom.DomNodeHelper as DomNodeHelper
import Org.Allbinary.Data.Tree.Dom.DomSearchHelper as DomSearchHelper
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoData as TransformInfoData
import Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoProperties as TransformInfoProperties


jclass : String
jclass =
    "TransformInfoPropertiesFactory"


jchain : List String
jchain =
    [ "TransformInfoPropertiesFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TransformInfoPropertiesFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TransformInfoPropertiesFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
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


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "node", "" ) ] ""
        (JR.run [ 
                    JR.declare "transformInfoChildNodeList" "" (JR.invoke "getChildNodes_0" (JR.local "node") []), 
                    JR.declare "transformInfoData" "" (JR.callStatic TransformInfoData.jm_getInstance_0 []), 
                    JR.declare "attributes" "" (JR.invoke "getAttributes_0" (JR.local "node") []), 
                    JR.declare "attrNode" "" (JR.invoke "getNamedItem_1" (JR.local "attributes") [ (JR.field "NAME" (JR.local "transformInfoData")) ]), 
                    JR.declare "name" "" (JR.invoke "getValue_0" (JR.local "attrNode") []), 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "VIEW" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.concat (JR.field "NEXT" (JR.callStatic CommonLabels.jm_getInstance_0 [])) (JR.str " View Name: ")) (JR.local "name")), JR.this, (JR.str "toTransformInfoPropertiesHashMap()") ]) ]) identity, 
                    JR.declare "labelNode" "" (JR.callStatic DomSearchHelper.jm_getNodeNoThrow_2 [ (JR.field "LABEL" (JR.local "transformInfoData")), (JR.local "transformInfoChildNodeList") ]), 
                    JR.declare "label" "" (JR.callStatic DomNodeHelper.jm_getTextNodesValue_1 [ (JR.local "labelNode") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "label") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "label" "" (JR.local "name")) ]) identity, 
                    JR.declare "descriptionNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "DESCRIPTION" (JR.local "transformInfoData")), (JR.local "transformInfoChildNodeList") ]), 
                    JR.declare "description" "" (JR.callStatic DomNodeHelper.jm_getTextNodesValue_1 [ (JR.local "descriptionNode") ]), 
                    JR.declare "objectFileNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "OBJECTFILENAME" (JR.local "transformInfoData")), (JR.local "transformInfoChildNodeList") ]), 
                    JR.declare "objectFileName" "" (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "objectFileNode") ]), 
                    JR.declare "objectConfigFileNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "OBJECTCONFIGFILENAME" (JR.local "transformInfoData")), (JR.local "transformInfoChildNodeList") ]), 
                    JR.declare "objectConfigFileName" "" (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "objectConfigFileNode") ]), 
                    JR.declare "templateFileNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "TEMPLATEFILENAME" (JR.local "transformInfoData")), (JR.local "transformInfoChildNodeList") ]), 
                    JR.declare "templateFileName" "" (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "templateFileNode") ]), 
                    JR.declare "transformInfoProperties" "" (JR.new TransformInfoProperties.jnew_6 [ (JR.local "name"), (JR.local "label"), (JR.local "description"), (JR.local "objectFileName"), (JR.local "objectConfigFileName"), (JR.local "templateFileName") ]), 
                    JR.return (JR.local "transformInfoProperties") ])
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

