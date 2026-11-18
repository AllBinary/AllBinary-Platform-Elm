module Org.Allbinary.Data.Tree.Dom.DomNodeHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import Org.Allbinary.Data.Tree.Dom.DomSearchHelper as DomSearchHelper
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "DomNodeHelper"


jchain : List String
jchain =
    [ "DomNodeHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getFirstChildElement_1", jm_getFirstChildElement_1 )
        , ( "getTextNodeValue_1", jm_getTextNodeValue_1 )
        , ( "getTextNodeValue_2", jm_getTextNodeValue_2 )
        , ( "getTextNodesValue_1", jm_getTextNodesValue_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomNodeHelper"
        [ ( "jm_getFirstChildElement_1", jm_getFirstChildElement_1 ), ( "jm_getTextNodeValue_1", jm_getTextNodeValue_1 ), ( "jm_getTextNodeValue_2", jm_getTextNodeValue_2 ), ( "jm_getTextNodesValue_1", jm_getTextNodesValue_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getFirstChildElement_1 : JR.Method
jm_getFirstChildElement_1 jheap jthis jargs =
    JR.method [ ( "parentNode", "" ) ] ""
        (JR.run [ 
                    JR.declare "node" "" (JR.invoke "getFirstChild_0" (JR.local "parentNode") []), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "node") JR.null) (JR.map2 JR.notEquals (JR.invoke "getNodeType_0" (JR.local "node") []) (JR.namedStatic "Node.jstatic_ELEMENT_NODE"))) (JR.run [ 
                        JR.declare "nodeList" "" (JR.invoke "getChildNodes_0" (JR.local "parentNode") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.invoke "getLength_0" (JR.local "nodeList") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66454 -> (JR.setLocal "index" "I" (JR.lit jwN66454))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "node" "" (JR.invoke "item_1" (JR.local "nodeList") [ (JR.local "index") ])), 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "getNodeType_0" (JR.local "node") []) (JR.int 1)) (JR.run [ 
                                JR.break ]) identity ]) ] ]) identity, 
                    JR.return (JR.local "node") ])
        (jregister jheap)
        jthis
        jargs


jm_getTextNodeValue_1 : JR.Method
jm_getTextNodeValue_1 jheap jthis jargs =
    JR.method [ ( "node", "" ) ] ""
        (JR.run [ 
                    JR.declare "nodeTextNode" "" (JR.invoke "getFirstChild_0" (JR.local "node") []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "nodeTextNode") JR.null) (JR.run [ 
                        JR.return (JR.invoke "getNodeValue_0" (JR.local "nodeTextNode") []) ]) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTextNodeValue_2 : JR.Method
jm_getTextNodeValue_2 jheap jthis jargs =
    JR.method [ ( "nodeName", "" ), ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "node" "" (JR.callStatic DomSearchHelper.jm_getNode_2 [ (JR.local "nodeName"), (JR.local "nodeList") ]), 
                    JR.return (JR.callStatic jm_getTextNodeValue_1 [ (JR.local "node") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTextNodesValue_1 : JR.Method
jm_getTextNodesValue_1 jheap jthis jargs =
    JR.method [ ( "node", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "nodeList" "" (JR.invoke "getChildNodes_0" (JR.local "node") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.invoke "getLength_0" (JR.local "nodeList") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67217 -> (JR.setLocal "index" "I" (JR.lit jwN67217))) JR.increment) ]) (JR.run [ 
                        JR.declare "nodeTextNode" "" (JR.invoke "item_1" (JR.local "nodeList") [ (JR.local "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "getNodeType_0" (JR.local "nodeTextNode") []) (JR.namedStatic "Node.jstatic_TEXT_NODE")) (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "nodeTextNode") JR.null) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getNodeValue_0" (JR.local "nodeTextNode") []) ]) ]) identity ]) identity ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

