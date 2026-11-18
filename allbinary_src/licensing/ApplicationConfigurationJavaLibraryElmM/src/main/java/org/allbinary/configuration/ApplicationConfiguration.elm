module Org.Allbinary.Configuration.ApplicationConfiguration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.configuration
-}

import JR
import Org.Allbinary.Logic.Io.AbDataInputStream as AbDataInputStream
import Org.Allbinary.Logic.Io.AbDataOutputStream as AbDataOutputStream
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Io.File.FileFactory as FileFactory
import Org.Allbinary.Logic.Io.FileStreamFactory as FileStreamFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Logic.Io.NullCloseable as NullCloseable
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ApplicationConfiguration"


jchain : List String
jchain =
    [ "ApplicationConfiguration" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "fullscreen", JR.defaultOf "Z" ), ( "showTitleBar", JR.defaultOf "Z" ), ( "progressBarView", JR.defaultOf "Z" ), ( "FILE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "read_0", jm_read_0 )
        , ( "write_0", jm_write_0 )
        , ( "update_1", jm_update_1 )
        , ( "setFullscreen_1", jm_setFullscreen_1 )
        , ( "isFullscreen_0", jm_isFullscreen_0 )
        , ( "setShowTitleBar_1", jm_setShowTitleBar_1 )
        , ( "isShowTitleBar_0", jm_isShowTitleBar_0 )
        , ( "setProgressBarView_1", jm_setProgressBarView_1 )
        , ( "isProgressBarView_0", jm_isProgressBarView_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ApplicationConfiguration"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_read_0", jm_read_0 ), ( "jm_write_0", jm_write_0 ), ( "jm_update_1", jm_update_1 ), ( "jm_setFullscreen_1", jm_setFullscreen_1 ), ( "jm_isFullscreen_0", jm_isFullscreen_0 ), ( "jm_setShowTitleBar_1", jm_setShowTitleBar_1 ), ( "jm_isShowTitleBar_0", jm_isShowTitleBar_0 ), ( "jm_setProgressBarView_1", jm_setProgressBarView_1 ), ( "jm_isProgressBarView_0", jm_isProgressBarView_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ApplicationConfiguration" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "fullscreen" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "showTitleBar" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "progressBarView" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "FILE" "" JR.this (JR.str "ReloadConfiguration.dat")),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.invoke "isFile_1" (JR.callStatic FileFactory.jm_getInstance_0 []) [ (JR.thisField "FILE") ]) (JR.run [ 
                            JR.exec (JR.invoke "read_0" JR.this []) ]) (JR.run [ 
                            JR.exec (JR.invoke "write_0" JR.this []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "ApplicationConfiguration.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "fileInputStreamFactory" "" (JR.callStatic FileStreamFactory.jm_getInstance_0 []), 
                    JR.declare "fileInputStream" "" (JR.invoke "getFileInputStreamInstance_2" (JR.local "fileInputStreamFactory") [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.thisField "FILE") ]), 
                    JR.declare "dataInputStream" "" (JR.new AbDataInputStream.jnew_1 [ (JR.local "fileInputStream") ]), 
                    JR.declare "fullScreen" "I" (JR.invoke "readInt_0" (JR.local "dataInputStream") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "fullScreen") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setFullscreen_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "fullScreen") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.invoke "setFullscreen_1" JR.this [ (JR.bool True) ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Invalid FullScreen ActivityConfiguration") ]) ]) ]), 
                    JR.declare "progressBarView" "I" (JR.invoke "readInt_0" (JR.local "dataInputStream") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "progressBarView") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setProgressBarView_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "progressBarView") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.invoke "setProgressBarView_1" JR.this [ (JR.bool True) ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Invalid ProgressBarView ActivityConfiguration") ]) ]) ]), 
                    JR.declare "showTitleBar" "I" (JR.invoke "readInt_0" (JR.local "dataInputStream") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "showTitleBar") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setShowTitleBar_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "showTitleBar") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.invoke "setShowTitleBar_1" JR.this [ (JR.bool True) ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Invalid ShowTitleBar ActivityConfiguration") ]) ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Read Configuration: ") (JR.invoke "toString_0" JR.this [])), JR.this, (JR.str "read") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "closeable" "" NullCloseable.jstatic_NULL_CLOSEABLE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Write Configuration: ") (JR.invoke "toString_0" JR.this [])), JR.this, (JR.str "write") ]), 
                        JR.declare "fileInputStreamFactory" "" (JR.callStatic FileStreamFactory.jm_getInstance_0 []), 
                        JR.declare "fileOutputStream" "" (JR.invoke "getFileOutputStreamInstance_2" (JR.local "fileInputStreamFactory") [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.thisField "FILE") ]), 
                        JR.declare "dataOutputStream" "" (JR.new AbDataOutputStream.jnew_1 [ (JR.local "fileOutputStream") ]), 
                        JR.exec (JR.setLocal "closeable" "" (JR.local "dataOutputStream")), 
                        JR.ifElse (JR.invoke "isFullscreen_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.int 1) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.int 0) ]) ]), 
                        JR.ifElse (JR.invoke "isProgressBarView_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.int 1) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.int 0) ]) ]), 
                        JR.ifElse (JR.invoke "isShowTitleBar_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.int 1) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.int 0) ]) ]), 
                        JR.exec (JR.invoke "flush_0" (JR.local "dataOutputStream") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "closeable") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "gameFeature") (JR.field "FULL_SCREEN" (JR.callStatic MainFeatureFactory.jm_getInstance_0 []))) (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.local "gameFeature") ]) (JR.run [ 
                            JR.ifElse (JR.map JR.not_ (JR.invoke "isFullscreen_0" JR.this [])) (JR.run [ 
                                JR.exec (JR.invoke "setFullscreen_1" JR.this [ (JR.bool True) ]), 
                                JR.exec (JR.invoke "write_0" JR.this []) ]) identity ]) (JR.run [ 
                            JR.ifElse (JR.invoke "isFullscreen_0" JR.this []) (JR.run [ 
                                JR.exec (JR.invoke "setFullscreen_1" JR.this [ (JR.bool False) ]), 
                                JR.exec (JR.invoke "write_0" JR.this []) ]) identity ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setFullscreen_1 : JR.Method
jm_setFullscreen_1 jheap jthis jargs =
    JR.method [ ( "fullscreen", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "fullscreen" "Z" JR.this (JR.local "fullscreen")) ])
        (jregister jheap)
        jthis
        jargs


jm_isFullscreen_0 : JR.Method
jm_isFullscreen_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "fullscreen") ])
        (jregister jheap)
        jthis
        jargs


jm_setShowTitleBar_1 : JR.Method
jm_setShowTitleBar_1 jheap jthis jargs =
    JR.method [ ( "showTitleBar", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "showTitleBar" "Z" JR.this (JR.local "showTitleBar")) ])
        (jregister jheap)
        jthis
        jargs


jm_isShowTitleBar_0 : JR.Method
jm_isShowTitleBar_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "showTitleBar") ])
        (jregister jheap)
        jthis
        jargs


jm_setProgressBarView_1 : JR.Method
jm_setProgressBarView_1 jheap jthis jargs =
    JR.method [ ( "progressBarView", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "progressBarView" "Z" JR.this (JR.local "progressBarView")) ])
        (jregister jheap)
        jthis
        jargs


jm_isProgressBarView_0 : JR.Method
jm_isProgressBarView_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "progressBarView") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "isFullscreen: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFullscreen_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isProgressBarView: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isProgressBarView_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isShowTitleBar: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isShowTitleBar_0" JR.this []) ]), 
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

