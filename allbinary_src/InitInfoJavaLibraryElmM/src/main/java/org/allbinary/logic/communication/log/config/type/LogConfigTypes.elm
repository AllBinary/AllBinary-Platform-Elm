module Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.log.config.type
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Data.Tree.Dom.DomNodeHelper as DomNodeHelper
import Org.Allbinary.Data.Tree.Dom.DomSearchHelper as DomSearchHelper
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigType as LogConfigType
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeData as LogConfigTypeData
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.LoggingInitInfo as LoggingInitInfo
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "LogConfigTypes"


jchain : List String
jchain =
    [ "LogConfigTypes" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LogConfigTypes"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_JSP_ERROR_NO_FUNCTION", jstatic_JSP_ERROR_NO_FUNCTION ), ( "jstatic_LOGGING", jstatic_LOGGING ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister, (JR.run [ 
                    JR.exec (JR.callStatic jm_init_0 []) ]) ]


jstatic_JSP_ERROR_NO_FUNCTION : JR.M
jstatic_JSP_ERROR_NO_FUNCTION s =
    JR.static "LogConfigTypes" jclinit "JSP_ERROR_NO_FUNCTION"
        (JR.str "in JSP Not In Function")
        s


jstatic_LOGGING : JR.M
jstatic_LOGGING s =
    JR.static "LogConfigTypes" jclinit "LOGGING"
        (JR.new BasicArrayListD.jnew_0 [])
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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Initialize LogconfigTypes"), (JR.str "LogConfigTypes"), (JR.str "init()") ]), 
                        JR.exec (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 []), 
                        JR.declare "loggingInitInfo" "" (JR.new LoggingInitInfo.jnew_0 []), 
                        JR.declare "logConfigTypeVector" "" (JR.invoke "getTypeList_0" (JR.local "loggingInitInfo") []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Number Of Log Configs: ") (JR.invoke "getNumberOfLogConfigs_0" (JR.local "loggingInitInfo") [])), (JR.str "LogConfigTypes"), (JR.str "init()") ]), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Number Of Log Config Type Names: ") (JR.invoke "size_0" (JR.local "logConfigTypeVector") [])), (JR.str "LogConfigTypes"), (JR.str "init()") ]), 
                        JR.exec (JR.invoke "addAllList_1" jstatic_LOGGING [ (JR.local "logConfigTypeVector") ]), 
                        JR.exec (JR.invoke "add_1" jstatic_LOGGING [ (JR.field "NETBEANS_MODULE" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putSE_4 [ (JR.str "Unable to initialize LogConfigTypes"), (JR.str "LogConfigTypes"), (JR.str "init()"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "node", "" ) ] ""
        (JR.run [ 
                    JR.declare "nameValueNode" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.field "NAME" (JR.callStatic LogConfigTypeData.jm_getInstance_0 [])), (JR.invoke "getChildNodes_0" (JR.local "node") []) ]), 
                    JR.declare "name" "" (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "nameValueNode") ]), 
                    JR.declare "descriptionValueNode" "" (JR.callStatic DomSearchHelper.jm_getNodeNoThrow_2 [ (JR.field "DESCRIPTION" (JR.callStatic LogConfigTypeData.jm_getInstance_0 [])), (JR.invoke "getChildNodes_0" (JR.local "node") []) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "descriptionValueNode") JR.null) (JR.run [ 
                        JR.declare "description" "" (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.local "descriptionValueNode") ]) ]) identity, 
                    JR.declare "availableLogConfigTypes" "" LogConfigType.jstatic_availableLogConfigTypes, 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "availableLogConfigTypes") []), 
                    JR.declare "logConfigType" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68164 -> (JR.setLocal "index" "I" (JR.lit jwN68164))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "logConfigType" "" (JR.invoke "get_1" (JR.local "availableLogConfigTypes") [ (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getName_0" (JR.local "logConfigType") []) [ (JR.local "name") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.local "logConfigType") ]) identity ]) ], 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "No Such LogConfigType: ") (JR.local "name")) ]) ])
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

