module Org.Allbinary.Logic.Visual.Transform.Info.Dom.TransformInfoPropertiesDocument exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.visual.transform.info.dom
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Data.Tree.Dom.Document.DomDocumentFileHelper as DomDocumentFileHelper
import Org.Allbinary.Data.Tree.Dom.DomSearchHelper as DomSearchHelper
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoData as TransformInfoData
import Org.Allbinary.Logic.Visual.Transform.Info.TransformInfoPropertiesFactory as TransformInfoPropertiesFactory
import Org.Allbinary.Logic.Visual.Transform.Info.TransformInfosData as TransformInfosData


jclass : String
jclass =
    "TransformInfoPropertiesDocument"


jchain : List String
jchain =
    [ "TransformInfoPropertiesDocument" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "document", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "toTransformInfoPropertiesHashMap_0", jm_toTransformInfoPropertiesHashMap_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TransformInfoPropertiesDocument"
        [ ( "jm_toTransformInfoPropertiesHashMap_0", jm_toTransformInfoPropertiesHashMap_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "xmlFile" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "filePath") ]), 
                    JR.exec (JR.setField "document" "" JR.this (JR.callStatic DomDocumentFileHelper.jm_createDocument_1 [ (JR.local "xmlFile") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_toTransformInfoPropertiesHashMap_0 : JR.Method
jm_toTransformInfoPropertiesHashMap_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "transformInfoPropertiesHashMap" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                        JR.declare "transformInfosNode" "" (JR.invoke "item_1" (JR.invoke "getElementsByTagName_1" (JR.thisField "document") [ (JR.field "NAME" (JR.callStatic TransformInfosData.jm_getInstance_0 [])) ]) [ (JR.int 0) ]), 
                        JR.declare "transformInfosChildNodeList" "" (JR.invoke "getChildNodes_0" (JR.local "transformInfosNode") []), 
                        JR.declare "transformInfoNodeVector" "" (JR.callStatic DomSearchHelper.jm_getAllNodes_2 [ (JR.field "NAME" (JR.callStatic TransformInfoData.jm_getInstance_0 [])), (JR.local "transformInfosChildNodeList") ]), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "VIEW" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Size: ") (JR.invoke "size_0" (JR.local "transformInfoNodeVector") [])), JR.this, (JR.str "toTransformInfoPropertiesHashMap()") ]) ]) identity, 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "transformInfoNodeVector") []), 
                        JR.declare "node" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "transformInfoProperties" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69328 -> (JR.setLocal "index" "I" (JR.lit jwN69328))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "node" "" (JR.invoke "get_1" (JR.local "transformInfoNodeVector") [ (JR.local "index") ])), 
                            JR.exec (JR.setLocal "transformInfoProperties" "" (JR.invoke "getInstance_1" (JR.callStatic TransformInfoPropertiesFactory.jm_getInstance_0 []) [ (JR.local "node") ])), 
                            JR.exec (JR.invoke "put_2" (JR.local "transformInfoPropertiesHashMap") [ (JR.invoke "getName_0" (JR.local "transformInfoProperties") []), (JR.local "transformInfoProperties") ]) ]) ], 
                        JR.return (JR.local "transformInfoPropertiesHashMap") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "VIEWERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "toTransformInfoPropertiesHashMap()"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
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

