module Org.Allbinary.Logic.Io.File.SimpleFileUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import JByteArrayOutputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Io.NullOutputStream as NullOutputStream
import Org.Allbinary.Logic.Io.NullReader as NullReader
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Io.NullWriter as NullWriter
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "SimpleFileUtil"


jchain : List String
jchain =
    [ "SimpleFileUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "NULL_WRITER", JR.defaultOf "" ), ( "NULL_READER", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "nullUtil", JR.defaultOf "" ), ( "streamUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "nullOutputStream_0", jm_nullOutputStream_0 )
        , ( "nullWriter_0", jm_nullWriter_0 )
        , ( "nullReader_0", jm_nullReader_0 )
        , ( "loadFileAsList_3", jm_loadFileAsList_3 )
        , ( "loadFileAsListReturnLine_4", jm_loadFileAsListReturnLine_4 )
        , ( "createStringFromArrayOfStrings_1", jm_createStringFromArrayOfStrings_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimpleFileUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_nullOutputStream_0", jm_nullOutputStream_0 ), ( "jm_nullWriter_0", jm_nullWriter_0 ), ( "jm_nullReader_0", jm_nullReader_0 ), ( "jm_loadFileAsList_3", jm_loadFileAsList_3 ), ( "jm_loadFileAsListReturnLine_4", jm_loadFileAsListReturnLine_4 ), ( "jm_createStringFromArrayOfStrings_1", jm_createStringFromArrayOfStrings_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SimpleFileUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "NULL_WRITER" "" JR.this (JR.callStatic jm_nullWriter_0 [])),
                JR.exec (JR.setField "NULL_READER" "" JR.this (JR.callStatic jm_nullReader_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "nullUtil" "" JR.this (JR.callStatic NullUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "streamUtil" "" JR.this (JR.callStatic StreamUtil.jm_getInstance_0 [])),
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


jm_nullOutputStream_0 : JR.Method
jm_nullOutputStream_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return NullOutputStream.jstatic_NULL_OUTPUT_STREAM ])
        (jregister jheap)
        jthis
        jargs


jm_nullWriter_0 : JR.Method
jm_nullWriter_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return NullWriter.jstatic_NULL_WRITER ])
        (jregister jheap)
        jthis
        jargs


jm_nullReader_0 : JR.Method
jm_nullReader_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return NullReader.jstatic_NULL_READER ])
        (jregister jheap)
        jthis
        jargs


jm_loadFileAsList_3 : JR.Method
jm_loadFileAsList_3 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "max", "I" ), ( "byteArray1", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "loadFileAsListReturnLine_4" JR.this [ (JR.local "inputStream"), (JR.local "max"), (JR.local "byteArray1"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_loadFileAsListReturnLine_4 : JR.Method
jm_loadFileAsListReturnLine_4 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "max", "I" ), ( "byteArray1", "" ), ( "includeReturnLine", "I" ) ] ""
        (JR.run [ 
                    JR.declare "stringList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "inputStream") JR.null) (JR.run [ 
                        JR.return (JR.local "stringList") ]) identity, 
                    JR.declare "byteArray" "" (JR.field "NULL_BYTE_ARRAY" (JR.thisField "nullUtil")), 
                    JR.try (JR.run [ 
                        JR.declare "outputStream2" "" (JR.new JByteArrayOutputStream.jnew_1 [ (JR.local "max") ]), 
                        JR.exec (JR.setLocal "byteArray" "" (JR.invoke "getByteArray_3" (JR.thisField "streamUtil") [ (JR.local "inputStream"), (JR.local "outputStream2"), (JR.local "byteArray1") ])), 
                        JR.exec (JR.invoke "close_1" (JR.thisField "streamUtil") [ (JR.local "inputStream") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.thisField "streamUtil") [ (JR.local "inputStream") ]), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "byteArray") JR.null) (JR.run [ 
                        JR.return (JR.local "stringList") ]) identity, 
                    JR.declare "size" "I" (JR.alength (JR.local "byteArray")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "startIndex" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "returnLine" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ 
                        JR.exec (JR.setLocal "startIndex" "I" (JR.local "index")), 
                        JR.while (JR.and (JR.map2 JR.less (JR.local "index") (JR.map2 JR.sub (JR.local "size") (JR.int 1))) (JR.map2 JR.notEquals (JR.aget (JR.local "byteArray") (JR.local "index")) (JR.cast "B" (JR.char 10)))) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN68527 -> (JR.setLocal "index" "I" (JR.lit jwN68527))) JR.increment) ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "includeReturnLine") (JR.int 0)) (JR.run [ 
                            JR.ifElse (JR.and (JR.map2 JR.greater (JR.local "index") (JR.int 0)) (JR.map2 JR.equals (JR.aget (JR.local "byteArray") (JR.map2 JR.sub (JR.local "index") (JR.int 1))) (JR.cast "B" (JR.char 13)))) (JR.run [ 
                                JR.exec (JR.setLocal "returnLine" "I" (JR.int 1)) ]) (JR.run [ 
                                JR.exec (JR.setLocal "returnLine" "I" (JR.int 0)) ]) ]) identity, 
                        JR.declare "s" "" (JR.withState JR.newString [ (JR.local "byteArray"), (JR.local "startIndex"), ((JR.map2 JR.sub (JR.map2 JR.sub (JR.map2 JR.add (JR.local "index") (JR.local "includeReturnLine")) (JR.local "returnLine")) (JR.local "startIndex"))) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "stringList") [ (JR.local "s") ]), 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN68922 -> (JR.setLocal "index" "I" (JR.lit jwN68922))) JR.increment) ]), 
                    JR.return (JR.local "stringList") ])
        (jregister jheap)
        jthis
        jargs


jm_createStringFromArrayOfStrings_1 : JR.Method
jm_createStringFromArrayOfStrings_1 jheap jthis jargs =
    JR.method [ ( "stringArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "size" "I" (JR.alength (JR.local "stringArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69296 -> (JR.setLocal "index" "I" (JR.lit jwN69296))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.aget (JR.local "stringArray") (JR.local "index")) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringMaker") []) ])
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

