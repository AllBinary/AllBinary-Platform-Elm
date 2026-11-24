module Org.Allbinary.Logic.Java.AnyType.ParamsUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.anyType
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ParamsUtil"


jchain : List String
jchain =
    [ "ParamsUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "viewParams_1", jm_viewParams_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ParamsUtil"
        [ ( "jm_viewParams_1", jm_viewParams_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_viewParams_1 : JR.Method
jm_viewParams_1 jheap jthis jargs =
    JR.method [ ( "params", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "params") JR.null) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "params"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN65987 -> (JR.setLocal "index" "I" (JR.lit jwN65987))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.aget (JR.local "params") (JR.local "index")) []) ]) ]) ], 
                        JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) (JR.run [ 
                    JR.return (JR.str "Params Null") ]) ])
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

