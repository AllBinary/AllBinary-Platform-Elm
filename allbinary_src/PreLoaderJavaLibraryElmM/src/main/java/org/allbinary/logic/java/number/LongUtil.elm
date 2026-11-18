module Org.Allbinary.Logic.Java.Number.LongUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.number
-}

import JR
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.Logic.Java.Number.LongData as LongData
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "LongUtil"


jchain : List String
jchain =
    [ "LongUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "fillIn_1", jm_fillIn_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LongUtil"
        [ ( "jm_fillIn_1", jm_fillIn_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_fillIn_1 : JR.Method
jm_fillIn_1 jheap jthis jargs =
    JR.method [ ( "end", "" ) ] ""
        (JR.run [ 
                    JR.declare "frameStringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.ifElse (JR.map2 JR.less (JR.invoke "length_0" (JR.local "frameStringBuffer") []) LongData.jstatic_MAX_LONG_LENGTH) (JR.run [ 
                        JR.declare "commonPhoneStrings" "" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []), 
                        JR.declare "size" "I" (JR.map2 JR.sub LongData.jstatic_MAX_LONG_LENGTH (JR.invoke "length_0" (JR.local "frameStringBuffer") [])), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66218 -> (JR.setLocal "index" "I" (JR.lit jwN66218))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "frameStringBuffer") [ (JR.field "ZERO" (JR.local "commonPhoneStrings")) ]) ]) ] ]) identity, 
                    JR.exec (JR.invoke "append_1" (JR.local "frameStringBuffer") [ (JR.local "end") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "frameStringBuffer") []) ])
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

