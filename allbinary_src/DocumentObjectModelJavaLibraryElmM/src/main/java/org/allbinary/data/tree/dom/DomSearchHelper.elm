module Org.Allbinary.Data.Tree.Dom.DomSearchHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "DomSearchHelper"


jchain : List String
jchain =
    [ "DomSearchHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getNodeNoThrow_2", jm_getNodeNoThrow_2 )
        , ( "getNode_2", jm_getNode_2 )
        , ( "getChildNodeList_2", jm_getChildNodeList_2 )
        , ( "getAllNodes_2", jm_getAllNodes_2 )
        , ( "getAllNodesNoThrow_2", jm_getAllNodesNoThrow_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomSearchHelper"
        [ ( "jm_getNodeNoThrow_2", jm_getNodeNoThrow_2 ), ( "jm_getNode_2", jm_getNode_2 ), ( "jm_getChildNodeList_2", jm_getChildNodeList_2 ), ( "jm_getAllNodes_2", jm_getAllNodes_2 ), ( "jm_getAllNodesNoThrow_2", jm_getAllNodesNoThrow_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getNodeNoThrow_2 : JR.Method
jm_getNodeNoThrow_2 jheap jthis jargs =
    JR.method [ ( "nodeName", "" ), ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "numberOfNodes" "I" (JR.invoke "getLength_0" (JR.local "nodeList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "numberOfNodes")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66304 -> (JR.setLocal "index" "I" (JR.lit jwN66304))) JR.increment) ]) (JR.run [ 
                        JR.declare "node" "" (JR.invoke "item_1" (JR.local "nodeList") [ (JR.local "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getNodeName_0" (JR.local "node") []) [ (JR.local "nodeName") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.local "node") ]) identity ]) ], 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_getNode_2 : JR.Method
jm_getNode_2 jheap jthis jargs =
    JR.method [ ( "nodeName", "" ), ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "node" "" (JR.callStatic jm_getNodeNoThrow_2 [ (JR.local "nodeName"), (JR.local "nodeList") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "node") JR.null) (JR.run [ 
                        JR.return (JR.local "node") ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.local "nodeName") (JR.str " Node Not Found in search")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getChildNodeList_2 : JR.Method
jm_getChildNodeList_2 jheap jthis jargs =
    JR.method [ ( "nodeName", "" ), ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "node" "" (JR.callStatic jm_getNode_2 [ (JR.local "nodeName"), (JR.local "nodeList") ]), 
                    JR.return (JR.invoke "getChildNodes_0" (JR.local "node") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAllNodes_2 : JR.Method
jm_getAllNodes_2 jheap jthis jargs =
    JR.method [ ( "nodeName", "" ), ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "vector" "" (JR.callStatic jm_getAllNodesNoThrow_2 [ (JR.local "nodeName"), (JR.local "nodeList") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "vector") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.local "nodeName") (JR.str " Node Not Found in search")) ]) ]) (JR.run [ 
                        JR.return (JR.local "vector") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAllNodesNoThrow_2 : JR.Method
jm_getAllNodesNoThrow_2 jheap jthis jargs =
    JR.method [ ( "nodeName", "" ), ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "nodeVector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "numberOfNodes" "I" (JR.invoke "getLength_0" (JR.local "nodeList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "numberOfNodes")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67302 -> (JR.setLocal "index" "I" (JR.lit jwN67302))) JR.increment) ]) (JR.run [ 
                        JR.declare "node" "" (JR.invoke "item_1" (JR.local "nodeList") [ (JR.local "index") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getNodeName_0" (JR.local "node") []) [ (JR.local "nodeName") ]) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "nodeVector") [ (JR.local "node") ]) ]) identity ]) ], 
                    JR.return (JR.local "nodeVector") ])
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

