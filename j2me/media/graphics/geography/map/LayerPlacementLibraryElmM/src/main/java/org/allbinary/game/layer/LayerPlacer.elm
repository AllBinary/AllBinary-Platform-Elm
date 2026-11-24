module Org.Allbinary.Game.Layer.LayerPlacer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil
import Org.Allbinary.Layer.LayerInterfaceFactory as LayerInterfaceFactory
import Org.Allbinary.Game.Layer.LayerPlacementTypeFactory as LayerPlacementTypeFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "LayerPlacer"


jchain : List String
jchain =
    [ "LayerPlacer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "enumerationUtil", JR.defaultOf "" ), ( "layerInterfaceVisitor", JR.defaultOf "" ), ( "dimension", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processList_1", jm_processList_1 )
        , ( "process_1", jm_process_1 )
        , ( "getPoint_1", jm_getPoint_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerPlacer"
        [ ( "jm_processList_1", jm_processList_1 ), ( "jm_process_1", jm_process_1 ), ( "jm_getPoint_1", jm_getPoint_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "layerInterfaceVisitor", "" ), ( "dimension", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "layerInterfaceVisitor" "" JR.this (JR.local "layerInterfaceVisitor")), 
                    JR.exec (JR.setField "dimension" "" JR.this (JR.local "dimension")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_processList_1 : JR.Method
jm_processList_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "layerPlacementInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67729 -> (JR.setLocal "index" "I" (JR.lit jwN67729))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerPlacementInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "process_1" JR.this [ (JR.local "layerPlacementInterface") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layerPlacementInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "relativePoint" "" (JR.invoke "getPoint_1" JR.this [ (JR.local "layerPlacementInterface") ]), 
                    JR.declare "layerInterfaceFactory" "" (JR.callStatic LayerInterfaceFactory.jm_getInstance_0 []), 
                    JR.declare "hashtable" "" (JR.invoke "getInstance_0" (JR.local "layerPlacementInterface") []), 
                    JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.local "hashtable") []), 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "layerHashtable" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "x" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "y" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "z" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "layerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.setLocal "point" "" (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ])), 
                        JR.exec (JR.setLocal "layerHashtable" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "point") ])), 
                        JR.exec (JR.setLocal "x" "I" (JR.map2 JR.add (JR.invoke "getX_0" (JR.local "point") []) (JR.invoke "getX_0" (JR.local "relativePoint") []))), 
                        JR.exec (JR.setLocal "y" "I" (JR.map2 JR.add (JR.invoke "getY_0" (JR.local "point") []) (JR.invoke "getY_0" (JR.local "relativePoint") []))), 
                        JR.exec (JR.setLocal "z" "I" (JR.map2 JR.add (JR.invoke "getZ_0" (JR.local "point") []) (JR.invoke "getZ_0" (JR.local "relativePoint") []))), 
                        JR.exec (JR.setLocal "layerInterface" "" (JR.invoke "getNexInstance_4" (JR.local "layerInterfaceFactory") [ (JR.local "layerHashtable"), (JR.local "x"), (JR.local "y"), (JR.local "z") ])), 
                        JR.exec (JR.invoke "visit_1" (JR.thisField "layerInterfaceVisitor") [ (JR.local "layerInterface") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getPoint_1 : JR.Method
jm_getPoint_1 jheap jthis jargs =
    JR.method [ ( "layerPlacementInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "layerPlacementType" "" (JR.invoke "getLayerType_0" (JR.local "layerPlacementInterface") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "layerPlacementType") (JR.field "MAP" (JR.callStatic LayerPlacementTypeFactory.jm_getInstance_0 []))) (JR.run [ 
                        JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "layerPlacementInterface") []), 
                        JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "layerPlacementInterface") []), 
                        JR.declare "x" "I" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.invoke "getX_0" (JR.thisField "dimension") []) (JR.local "width"))) (JR.int 2))), 
                        JR.declare "y" "I" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.invoke "getY_0" (JR.thisField "dimension") []) (JR.local "height"))) (JR.int 2))), 
                        JR.return (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "x"), (JR.local "y") ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "layerPlacementType") (JR.field "UP" (JR.callStatic LayerPlacementTypeFactory.jm_getInstance_0 []))) (JR.run [ 
                        JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "layerPlacementInterface") []), 
                        JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "layerPlacementInterface") []), 
                        JR.declare "x" "I" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.invoke "getX_0" (JR.thisField "dimension") []) (JR.local "width"))) (JR.int 2))), 
                        JR.declare "y" "I" (JR.map JR.neg (JR.local "height")), 
                        JR.return (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "x"), (JR.local "y") ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "PlacementType Not Recognized") ]) ]) ]) ])
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

