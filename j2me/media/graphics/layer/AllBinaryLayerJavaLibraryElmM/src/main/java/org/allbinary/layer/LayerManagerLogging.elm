module Org.Allbinary.Layer.LayerManagerLogging exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import JInteger
import Org.Allbinary.Layer.LayerManagerLoggingBase as LayerManagerLoggingBase
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "LayerManagerLogging"


jchain : List String
jchain =
    [ "LayerManagerLogging" ]
        ++ LayerManagerLoggingBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerManagerLoggingBase.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "stringBuilder", JR.defaultOf "" ), ( "APPEND", JR.defaultOf "" ), ( "APPEND_", JR.defaultOf "" ), ( "_AT_", JR.defaultOf "" ), ( "ATTEMPT_REMOVE_", JR.defaultOf "" ), ( "REMOVE_", JR.defaultOf "" ), ( "REMOVE", JR.defaultOf "" ), ( "DID_NOT_REMOVE", JR.defaultOf "" ), ( "CLEAR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "append_1", jm_append_1 )
        , ( "appendAt_2", jm_appendAt_2 )
        , ( "remove_1", jm_remove_1 )
        , ( "removeResult_3", jm_removeResult_3 )
        , ( "log_1", jm_log_1 )
        , ( "clear_0", jm_clear_0 ) ]
        LayerManagerLoggingBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerManagerLogging"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_append_1", jm_append_1 ), ( "jm_appendAt_2", jm_appendAt_2 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_removeResult_3", jm_removeResult_3 ), ( "jm_log_1", jm_log_1 ), ( "jm_clear_0", jm_clear_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_removeFailed", jstatic_removeFailed ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LayerManagerLogging" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_removeFailed : JR.M
jstatic_removeFailed s =
    JR.static "LayerManagerLogging" jclinit "removeFailed"
        (JR.bool False)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerManagerLoggingBase.jinit_0 JR.this []),
            JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "stringBuilder" "" JR.this (JR.new StringMaker.jnew_0 [])),
                JR.exec (JR.setField "APPEND" "" JR.this (JR.str "append")),
                JR.exec (JR.setField "APPEND_" "" JR.this (JR.str " append: ")),
                JR.exec (JR.setField "_AT_" "" JR.this (JR.str " at: ")),
                JR.exec (JR.setField "ATTEMPT_REMOVE_" "" JR.this (JR.str " Remove Attempt: ")),
                JR.exec (JR.setField "REMOVE_" "" JR.this (JR.str " Remove: ")),
                JR.exec (JR.setField "REMOVE" "" JR.this (JR.str "remove")),
                JR.exec (JR.setField "DID_NOT_REMOVE" "" JR.this (JR.str " Did not remove: ")),
                JR.exec (JR.setField "CLEAR" "" JR.this (JR.str " Clear List")),
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


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "APPEND_") ]) [ (JR.invoke "getName_0" (JR.local "layerInterface") []) ]) []), JR.this, (JR.thisField "APPEND") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_appendAt_2 : JR.Method
jm_appendAt_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "APPEND_") ]) [ (JR.invoke "getName_0" (JR.local "layerInterface") []) ]) [ (JR.thisField "_AT_") ]) [ (JR.local "index") ]) []), JR.this, (JR.thisField "APPEND") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "layerInterface") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "ATTEMPT_REMOVE_") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "layerInterface") ]) ]) []), JR.this, (JR.thisField "REMOVE") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "ATTEMPT_REMOVE_") ]) [ (JR.invoke "getName_0" (JR.local "layerInterface") []) ]) []), JR.this, (JR.thisField "REMOVE") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeResult_3 : JR.Method
jm_removeResult_3 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "layerInterface", "" ), ( "result", "Z" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "layerInterface") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "REMOVE_") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "layerInterface") ]) ]) []), JR.this, (JR.thisField "REMOVE") ]) ]) (JR.run [ 
                    JR.ifElse (JR.local "result") (JR.run [ 
                        JR.ifElse jstatic_removeFailed (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "REMOVE_") ]) [ (JR.invoke "getName_0" (JR.local "layerInterface") []) ]) []), JR.this, (JR.thisField "REMOVE") ]) ]) identity ]) (JR.run [ 
                        JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "DID_NOT_REMOVE") ]) [ (JR.invoke "getName_0" (JR.local "layerInterface") []) ]) []), JR.this, (JR.thisField "REMOVE") ]), 
                        JR.exec (JR.setStatic "LayerManagerLogging.removeFailed" "Z" (JR.bool True)) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_log_1 : JR.Method
jm_log_1 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                    JR.declare "size" "I" (JR.invoke "getSize_0" (JR.local "layerManager") []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.invoke "append_1" (JR.thisField "stringBuilder") [ (JR.callStatic JInteger.jm_toHexString_1 [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.local "layerManager") ]) ]) ]) [ (JR.field "COLON_SEP" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.local "size") ]) [ (JR.field "COLON_SEP" (JR.local "commonSeps")) ]), 
                    JR.declare "allBinaryLayer" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70888 -> (JR.setLocal "index" "I" (JR.lit jwN70888))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "allBinaryLayer" "" ((JR.invoke "getLayerAt_1" (JR.local "layerManager") [ (JR.local "index") ]))), 
                        JR.exec (JR.invoke "append_1" (JR.invoke "append_1" (JR.thisField "stringBuilder") [ (JR.invoke "getName_0" (JR.local "allBinaryLayer") []) ]) [ (JR.field "COMMA" (JR.local "commonSeps")) ]) ]) ], 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.thisField "stringBuilder") []), JR.this, (JR.thisField "REMOVE") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "delete_2" (JR.thisField "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.thisField "stringBuilder") []) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.thisField "stringBuilder") [ (JR.invoke "hashCode_1" (JR.callStatic TsUtil.jm_getInstance_0 []) [ JR.this ]) ]) [ (JR.thisField "CLEAR") ]) []), JR.this, (JR.thisField "CLEAR") ]) ])
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

