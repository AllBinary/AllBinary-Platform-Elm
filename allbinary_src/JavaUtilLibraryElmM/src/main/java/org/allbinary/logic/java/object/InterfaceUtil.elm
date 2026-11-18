module Org.Allbinary.Logic.Java.AnyType.InterfaceUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.anyType
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "InterfaceUtil"


jchain : List String
jchain =
    [ "InterfaceUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "viewAll_2", jm_viewAll_2 )
        , ( "getClass_2", jm_getClass_2 )
        , ( "isImplemented_2", jm_isImplemented_2 )
        , ( "isImplementedView_2", jm_isImplementedView_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InterfaceUtil"
        [ ( "jm_viewAll_2", jm_viewAll_2 ), ( "jm_getClass_2", jm_getClass_2 ), ( "jm_isImplemented_2", jm_isImplemented_2 ), ( "jm_isImplementedView_2", jm_isImplementedView_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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
                    JR.declare "interfaces" "" (JR.invoke "getInterfaces_0" (JR.local "myClass") []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Interfaces: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "interfaces"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66332 -> (JR.setLocal "index" "I" (JR.lit jwN66332))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Interface: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.aget (JR.local "interfaces") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "lineBreak") ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getClass_2 : JR.Method
jm_getClass_2 jheap jthis jargs =
    JR.method [ ( "interfaceName", "" ), ( "interfaces", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.and (JR.and (JR.map2 JR.notEquals (JR.local "interfaceName") JR.null) (JR.map2 JR.notEquals (JR.local "interfaces") JR.null)) (JR.map2 JR.greater (JR.alength (JR.local "interfaces")) (JR.int 0))) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "interfaces"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66685 -> (JR.setLocal "index" "I" (JR.lit jwN66685))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.invoke "getName_0" (JR.aget (JR.local "interfaces") (JR.local "index")) []) [ (JR.local "interfaceName") ]) (JR.int 0)) (JR.run [ 
                                JR.return (JR.aget (JR.local "interfaces") (JR.local "index")) ]) identity ]) ] ]) identity, 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_isImplemented_2 : JR.Method
jm_isImplemented_2 jheap jthis jargs =
    JR.method [ ( "clazz", "" ), ( "anyType", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "classes" "" (JR.invoke "getInterfaces_0" (JR.getClass (JR.local "anyType")) []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "classes"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66999 -> (JR.setLocal "index" "I" (JR.lit jwN66999))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getName_0" (JR.local "clazz") []) [ (JR.invoke "getName_0" (JR.aget (JR.local "classes") (JR.local "index")) []) ]) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) identity ]) ], 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isImplementedView_2 : JR.Method
jm_isImplementedView_2 jheap jthis jargs =
    JR.method [ ( "clazz", "" ), ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "classes" "" (JR.invoke "getInterfaces_0" (JR.getClass (JR.local "anyType")) []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "isImplementedView: \n") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "classes"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67781 -> (JR.setLocal "index" "I" (JR.lit jwN67781))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.local "clazz") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " should be = ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.aget (JR.local "classes") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" (JR.aget (JR.local "classes") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) ], 
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

