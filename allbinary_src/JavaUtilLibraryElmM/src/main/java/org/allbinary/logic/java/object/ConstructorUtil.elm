module Org.Allbinary.Logic.Java.AnyType.ConstructorUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.anyType
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ConstructorUtil"


jchain : List String
jchain =
    [ "ConstructorUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "viewAll_2", jm_viewAll_2 )
        , ( "view_2", jm_view_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ConstructorUtil"
        [ ( "jm_viewAll_2", jm_viewAll_2 ), ( "jm_view_2", jm_view_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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
                    JR.declare "constructor" "" (JR.invoke "getConstructors_0" (JR.local "myClass") []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Constructors: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "constructor"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66272 -> (JR.setLocal "index" "I" (JR.lit jwN66272))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callStatic jm_view_2 [ (JR.aget (JR.local "constructor") (JR.local "index")), (JR.local "lineBreak") ]) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_view_2 : JR.Method
jm_view_2 jheap jthis jargs =
    JR.method [ ( "constructor", "" ), ( "lineBreak", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "constructor") JR.null) (JR.run [ 
                        JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.local "constructor") []) ]), 
                        JR.declare "classes" "" (JR.invoke "getParameterTypes_0" (JR.local "constructor") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "classes"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66841 -> (JR.setLocal "index" "I" (JR.lit jwN66841))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.aget (JR.local "classes") (JR.local "index")) []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COLON" (JR.local "commonSeps")) ]), 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]) ]) ], 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]), 
                        JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) (JR.run [ 
                    JR.return (JR.str "Constructor Null") ]) ])
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

