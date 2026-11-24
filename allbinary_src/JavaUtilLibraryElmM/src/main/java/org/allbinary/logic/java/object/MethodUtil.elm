module Org.Allbinary.Logic.Java.AnyType.MethodUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.anyType
-}

import JR
import Org.Allbinary.Logic.Java.AnyType.ParamsUtil as ParamsUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "MethodUtil"


jchain : List String
jchain =
    [ "MethodUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "viewAll_2", jm_viewAll_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MethodUtil"
        [ ( "jm_viewAll_2", jm_viewAll_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_viewAll_2 : JR.Method
jm_viewAll_2 jheap jthis jargs =
    JR.method [ ( "myClass", "" ), ( "lineBreak", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "method" "" (JR.invoke "getMethods_0" (JR.local "myClass") []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Methods: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "method"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66298 -> (JR.setLocal "index" "I" (JR.lit jwN66298))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.invoke "getReturnType_0" (JR.aget (JR.local "method") (JR.local "index")) []) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.aget (JR.local "method") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "(") ]), 
                        JR.exec (JR.callStatic ParamsUtil.jm_viewParams_1 [ (JR.invoke "getParameterTypes_0" (JR.aget (JR.local "method") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str ")") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]) ]) ], 
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

