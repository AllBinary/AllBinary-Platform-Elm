module Org.Allbinary.Media.Audio.Sounds exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Media.Audio.SoundStrings as SoundStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "Sounds"


jchain : List String
jchain =
    [ "Sounds" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "soundStrings", JR.defaultOf "" ), ( "soundsFactoryInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "stopAll_0", jm_stopAll_0 )
        , ( "closeAll_0", jm_closeAll_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Sounds"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_stopAll_0", jm_stopAll_0 ), ( "jm_closeAll_0", jm_closeAll_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "soundsFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "soundStrings" "" JR.this (JR.callStatic SoundStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "soundsFactoryInterface" "" JR.this (JR.local "soundsFactoryInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                    JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "init_0" (JR.thisField "soundsFactoryInterface") []), 
                    JR.declare "soundInterfaceArray" "" (JR.invoke "getSoundInterfaceArray_0" (JR.thisField "soundsFactoryInterface") []), 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.declare "indexInteger" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "indexString" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.alength (JR.local "soundInterfaceArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN70690 -> (JR.setLocal "i" "I" (JR.lit jwN70690))) JR.increment) ]) (JR.run [ 
                        JR.declare "soundInterface" "" (JR.aget (JR.local "soundInterfaceArray") (JR.local "i")), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "soundInterface") JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "indexInteger" "" (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.local "i") ])), 
                            JR.exec (JR.setLocal "indexString" "" (JR.invoke "toString_0" (JR.local "indexInteger") [])), 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INDEX_LABEL" (JR.local "commonLabels")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "indexString") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SOUND" (JR.thisField "soundStrings")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.getClass (JR.local "soundInterface")) []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "init_0" (JR.local "soundInterface") []), 
                            JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 100), (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "INIT_SOUND" (JR.thisField "soundStrings")) ]) [ (JR.local "indexString") ]) []) ]) ]) identity ]) ], 
                    JR.exec (JR.invoke "setInitialized_1" (JR.thisField "soundsFactoryInterface") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_stopAll_0 : JR.Method
jm_stopAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "STOP_ALL" (JR.thisField "soundStrings")) ]), 
                    JR.declare "soundInterfaceArray" "" (JR.invoke "getSoundInterfaceArray_0" (JR.thisField "soundsFactoryInterface") []), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.declare "player" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "soundInterfaceArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71292 -> (JR.setLocal "index" "I" (JR.lit jwN71292))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.local "soundInterfaceArray") (JR.local "index")) JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "player" "" (JR.invoke "getPlayerP_0" (JR.aget (JR.local "soundInterfaceArray") (JR.local "index")) [])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "player") JR.null) (JR.run [ 
                                JR.exec (JR.invoke "stop_0" (JR.local "player") []), 
                                JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.int 100), (JR.field "STOPPING_SOUND" (JR.thisField "soundStrings")), (JR.local "index") ]) ]) identity ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_closeAll_0 : JR.Method
jm_closeAll_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CLOSE_ALL" (JR.thisField "soundStrings")) ]), 
                    JR.declare "soundInterfaceArray" "" (JR.invoke "getSoundInterfaceArray_0" (JR.thisField "soundsFactoryInterface") []), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.declare "player" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "soundInterfaceArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71797 -> (JR.setLocal "index" "I" (JR.lit jwN71797))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.local "soundInterfaceArray") (JR.local "index")) JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "player" "" (JR.invoke "getPlayerP_0" (JR.aget (JR.local "soundInterfaceArray") (JR.local "index")) [])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "player") JR.null) (JR.run [ 
                                JR.exec (JR.invoke "close_0" (JR.local "player") []), 
                                JR.exec (JR.invoke "addPortion_3" (JR.local "progressCanvas") [ (JR.int 100), (JR.field "CLOSING_SOUND" (JR.thisField "soundStrings")), (JR.local "index") ]) ]) identity ]) identity ]) ] ])
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

