module Org.Allbinary.Graphics.Form.Item.CommandTextItemArrayFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Form.Item.CommandTextItem as CommandTextItem
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Javax.Microedition.Lcdui.LcduiImageItem as LcduiImageItem
import Org.Allbinary.Graphics.Form.ScreenInfo as ScreenInfo
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.VectorUtil as VectorUtil


jclass : String
jclass =
    "CommandTextItemArrayFactory"


jchain : List String
jchain =
    [ "CommandTextItemArrayFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ), ( "visitorInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandTextItemArrayFactory"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "visitorInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "visitorInterface" "" JR.this (JR.local "visitorInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "vector", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "vectorUtil" "" (JR.callStatic VectorUtil.jm_getInstance_0 []), 
                    JR.declare "size" "I" (JR.invoke "getSize_1" (JR.local "vectorUtil") [ (JR.local "vector") ]), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []), 
                    JR.declare "textItem" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "priorityLimit" "I" (JR.int 7), 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "isLargeEnoughDisplayForBigMenu" "Z" (JR.or ((JR.and (JR.invoke "isPortrait_0" (JR.local "displayInfo") []) (JR.map2 JR.greaterEquals (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.field "MEDIUM_WIDTH" (JR.callStatic ScreenInfo.jm_getInstance_0 []))))) ((JR.and (JR.map JR.not_ (JR.invoke "isPortrait_0" (JR.local "displayInfo") [])) (JR.map2 JR.greaterEquals (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []) (JR.field "MEDIUM_WIDTH" (JR.callStatic ScreenInfo.jm_getInstance_0 [])))))), 
                    JR.ifElse (JR.and (JR.map JR.not_ (JR.local "isLargeEnoughDisplayForBigMenu")) (JR.map2 JR.greater (JR.local "size") (JR.int 3))) (JR.run [ 
                        JR.exec (JR.setLocal "priorityLimit" "I" (JR.int 3)) ]) identity, 
                    JR.declare "command" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69045 -> (JR.setLocal "index" "I" (JR.lit jwN69045))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "command" "" (JR.invoke "elementAt_2" (JR.local "vectorUtil") [ (JR.local "vector"), (JR.local "index") ])), 
                        JR.ifElse (JR.map2 JR.less (JR.invoke "getPriority_0" (JR.local "command") []) (JR.local "priorityLimit")) (JR.run [ 
                            JR.declare "aBoolean" "" (JR.invoke "visit_1" (JR.thisField "visitorInterface") [ (JR.local "command") ]), 
                            JR.ifElse (JR.invoke "booleanValue_0" (JR.local "aBoolean") []) (JR.run [ 
                                JR.exec (JR.setLocal "textItem" "" (JR.new CommandTextItem.jnew_5 [ (JR.local "command"), LcduiImageItem.jstatic_LAYOUT_DEFAULT, (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ])), 
                                JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "textItem") ]) ]) identity ]) identity ]) ], 
                    JR.declare "textItemArray" "" (JR.newArray "" [ (JR.invoke "size_0" (JR.thisField "list") []) ]), 
                    JR.declare "size2" "I" (JR.alength (JR.local "textItemArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69314 -> (JR.setLocal "index" "I" (JR.lit jwN69314))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "textItemArray") (\jaN69194 -> JR.andThen (JR.local "index") (\jiN69194 -> (JR.aset (JR.lit jaN69194) (JR.lit jiN69194) (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")))))) ]) ], 
                    JR.return (JR.local "textItemArray") ])
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

