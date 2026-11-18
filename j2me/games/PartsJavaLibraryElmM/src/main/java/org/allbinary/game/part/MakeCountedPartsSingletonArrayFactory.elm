module Org.Allbinary.Game.Part.MakeCountedPartsSingletonArrayFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Part.CountedLayerInterfaceFactoryPart as CountedLayerInterfaceFactoryPart
import Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactoryPool as CountedPickedUpLayerInterfaceFactoryPool
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "MakeCountedPartsSingletonArrayFactory"


jchain : List String
jchain =
    [ "MakeCountedPartsSingletonArrayFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getUpdated_1", jm_getUpdated_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MakeCountedPartsSingletonArrayFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getUpdated_1", jm_getUpdated_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MakeCountedPartsSingletonArrayFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
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


jm_getUpdated_1 : JR.Method
jm_getUpdated_1 jheap jthis jargs =
    JR.method [ ( "partInterfaceArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "partInterfaceArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68523 -> (JR.setLocal "index" "I" (JR.lit jwN68523))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.aget (JR.local "partInterfaceArray") (JR.local "index")) ]) ]) ], 
                    JR.declare "countedBasicArrayList" "" (JR.invoke "getList_0" (JR.callStatic CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0 []) []), 
                    JR.declare "layerInterfaceFactoryInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "countedBasicArrayList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68831 -> (JR.setLocal "index" "I" (JR.lit jwN68831))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerInterfaceFactoryInterface" "" (JR.aget (JR.field "objectArray" (JR.local "countedBasicArrayList")) (JR.local "index"))), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.new CountedLayerInterfaceFactoryPart.jnew_2 [ (JR.int 0), (JR.local "layerInterfaceFactoryInterface") ]) ]) ]) ], 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Total Parts: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "list") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Counted: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.local "countedBasicArrayList") []) ]), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")) ]), 
                    JR.declare "newPartInterfaceArray" "" (JR.newArray "" [ (JR.invoke "size_0" (JR.thisField "list") []) ]), 
                    JR.declare "newSize" "I" (JR.alength (JR.local "newPartInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "newSize")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69395 -> (JR.setLocal "index" "I" (JR.lit jwN69395))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "newPartInterfaceArray") (\jaN69276 -> JR.andThen (JR.local "index") (\jiN69276 -> (JR.aset (JR.lit jaN69276) (JR.lit jiN69276) (JR.invoke "get_1" (JR.thisField "list") [ (JR.local "index") ]))))) ]) ], 
                    JR.return (JR.local "newPartInterfaceArray") ])
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

