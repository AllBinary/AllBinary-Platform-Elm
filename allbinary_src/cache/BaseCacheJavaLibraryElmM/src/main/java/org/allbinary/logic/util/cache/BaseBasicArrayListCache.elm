module Org.Allbinary.Logic.Util.Cache.BaseBasicArrayListCache exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BaseBasicArrayListCache"


jchain : List String
jchain =
    [ "BaseBasicArrayListCache" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "log_0", jm_log_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseBasicArrayListCache"
        [ ( "jm_log_0", jm_log_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_log_0 : JR.Method
jm_log_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "S: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.thisField "list") []) ]), 
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

