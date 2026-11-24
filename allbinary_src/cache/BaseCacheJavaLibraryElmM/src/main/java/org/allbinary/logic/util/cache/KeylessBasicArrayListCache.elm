module Org.Allbinary.Logic.Util.Cache.KeylessBasicArrayListCache exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Logic.Util.Cache.IndexedBasicArrayListCache as IndexedBasicArrayListCache
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "KeylessBasicArrayListCache"


jchain : List String
jchain =
    [ "KeylessBasicArrayListCache" ]
        ++ IndexedBasicArrayListCache.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedBasicArrayListCache.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "basicArrayListUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "get_0", jm_get_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "log_0", jm_log_0 ) ]
        IndexedBasicArrayListCache.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeylessBasicArrayListCache"
        [ ( "jm_get_0", jm_get_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_log_0", jm_log_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect IndexedBasicArrayListCache.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicArrayListUtil" "" JR.this (JR.callStatic BasicArrayListUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.thisField "index") (JR.invoke "size_0" (JR.thisField "list") [])) (JR.run [ 
                            JR.exec (JR.invoke "addDefault_0" JR.this []) ]) identity, 
                        JR.declare "list" "" (JR.invoke "getAt_1" JR.this [ (JR.postUpdate (JR.thisField "index") (\jwN67103 -> (JR.setField "index" "I" JR.this (JR.lit jwN67103))) JR.increment) ]), 
                        JR.return (JR.local "list") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "GET" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.invoke "getImmutableInstance_0" (JR.thisField "basicArrayListUtil") []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia IndexedBasicArrayListCache.jvtable "clear_0" JR.this []), 
                    JR.declare "basicArrayList" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67525 -> (JR.setLocal "index" "I" (JR.lit jwN67525))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "basicArrayList" "" ((JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")))), 
                        JR.exec (JR.invoke "clear_0" (JR.local "basicArrayList") []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_log_0 : JR.Method
jm_log_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "S: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "list") []) ]), 
                    JR.declare "S_LABEL" "" (JR.str " s: "), 
                    JR.declare "basicArrayList" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67969 -> (JR.setLocal "index" "I" (JR.lit jwN67969))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "S_LABEL") ]), 
                        JR.exec (JR.setLocal "basicArrayList" "" ((JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")))), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.local "basicArrayList") []) ]) ]) ], 
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

