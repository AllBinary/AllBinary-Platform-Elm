module Org.Allbinary.Data.Tree.Dom.DomNodeListHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Data.Tree.Dom.DomNodeHelper as DomNodeHelper


jclass : String
jclass =
    "DomNodeListHelper"


jchain : List String
jchain =
    [ "DomNodeListHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getVector_1", jm_getVector_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomNodeListHelper"
        [ ( "jm_getVector_1", jm_getVector_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getVector_1 : JR.Method
jm_getVector_1 jheap jthis jargs =
    JR.method [ ( "nodeList", "" ) ] ""
        (JR.run [ 
                    JR.declare "vector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "getLength_0" (JR.local "nodeList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66344 -> (JR.setLocal "index" "I" (JR.lit jwN66344))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.local "vector") [ (JR.callStatic DomNodeHelper.jm_getTextNodeValue_1 [ (JR.invoke "item_1" (JR.local "nodeList") [ (JR.local "index") ]) ]) ]) ]) ], 
                    JR.return (JR.local "vector") ])
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

