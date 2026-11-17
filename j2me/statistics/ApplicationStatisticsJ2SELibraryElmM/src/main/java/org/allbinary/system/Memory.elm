module Memory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.system
-}

import JR
import JRuntime
import StringMaker


jclass : String
jclass =
    "Memory"


jchain : List String
jchain =
    [ "Memory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInfo_0", jm_getInfo_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Memory"
        [ ( "jm_getInfo_0", jm_getInfo_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInfo_0 : JR.Method
jm_getInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Memory: Free: ") ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.invoke "freeMemory_0" (JR.callStatic JRuntime.jm_getRuntime_0 []) []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Max: ") ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.invoke "maxMemory_0" (JR.callStatic JRuntime.jm_getRuntime_0 []) []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Total: ") ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.invoke "totalMemory_0" (JR.callStatic JRuntime.jm_getRuntime_0 []) []) ]), 
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

