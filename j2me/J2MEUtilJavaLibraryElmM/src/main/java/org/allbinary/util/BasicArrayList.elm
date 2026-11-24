module Org.Allbinary.Util.BasicArrayList exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import Org.Allbinary.Util.ArrayUtil as ArrayUtil
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicArrayList"


jchain : List String
jchain =
    [ "BasicArrayList" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "arrayUtil", JR.defaultOf "" ), ( "objectArray", JR.defaultOf "" ), ( "currentIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "addAt_2", jm_addAt_2 )
        , ( "add_1", jm_add_1 )
        , ( "removeAt_1", jm_removeAt_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "removeAll2_1", jm_removeAll2_1 )
        , ( "addAll2_1", jm_addAll2_1 )
        , ( "addAllList_1", jm_addAllList_1 )
        , ( "addAll_1", jm_addAll_1 )
        , ( "ensureCapacity_1", jm_ensureCapacity_1 )
        , ( "trimToSize_0", jm_trimToSize_0 )
        , ( "indexOf_1", jm_indexOf_1 )
        , ( "lastIndexOf_1", jm_lastIndexOf_1 )
        , ( "get_1", jm_get_1 )
        , ( "set_2", jm_set_2 )
        , ( "clear_0", jm_clear_0 )
        , ( "size_0", jm_size_0 )
        , ( "isEmpty_0", jm_isEmpty_0 )
        , ( "contains_1", jm_contains_1 )
        , ( "toArray_0", jm_toArray_0 )
        , ( "toArrayType_1", jm_toArrayType_1 )
        , ( "clone_0", jm_clone_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicArrayList"
        [ ( "jm_addAt_2", jm_addAt_2 ), ( "jm_add_1", jm_add_1 ), ( "jm_removeAt_1", jm_removeAt_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_removeAll2_1", jm_removeAll2_1 ), ( "jm_addAll2_1", jm_addAll2_1 ), ( "jm_addAllList_1", jm_addAllList_1 ), ( "jm_addAll_1", jm_addAll_1 ), ( "jm_ensureCapacity_1", jm_ensureCapacity_1 ), ( "jm_trimToSize_0", jm_trimToSize_0 ), ( "jm_indexOf_1", jm_indexOf_1 ), ( "jm_lastIndexOf_1", jm_lastIndexOf_1 ), ( "jm_get_1", jm_get_1 ), ( "jm_set_2", jm_set_2 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_size_0", jm_size_0 ), ( "jm_isEmpty_0", jm_isEmpty_0 ), ( "jm_contains_1", jm_contains_1 ), ( "jm_toArray_0", jm_toArray_0 ), ( "jm_toArrayType_1", jm_toArrayType_1 ), ( "jm_clone_0", jm_clone_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_SIZE", jstatic_SIZE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SIZE : JR.M
jstatic_SIZE s =
    JR.static "BasicArrayList" jclinit "SIZE"
        (JR.str ", Size: ")
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "objectArray", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "arrayUtil" "" JR.this (JR.callStatic ArrayUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "currentIndex" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "objectArray" "" JR.this (JR.local "objectArray")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_addAt_2 : JR.Method
jm_addAt_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "element", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.greater (JR.local "index") (JR.thisField "currentIndex")) (JR.map2 JR.less (JR.local "index") (JR.int 0))) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INDEX_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_SIZE ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "currentIndex") ]), 
                        JR.throw (JR.new (JR.newThrowable "IndexOutOfBoundsException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) ]) identity, 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentIndex") (JR.int 1)) ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.thisField "objectArray"), (JR.local "index"), (JR.thisField "objectArray"), (JR.map2 JR.add (JR.local "index") (JR.int 1)), (JR.map2 JR.sub (JR.thisField "currentIndex") (JR.local "index")) ]), 
                    JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN67142 -> JR.andThen (JR.local "index") (\jiN67142 -> (JR.aset (JR.lit jaN67142) (JR.lit jiN67142) (JR.local "element"))))), 
                    JR.exec (JR.postUpdate (JR.thisField "currentIndex") (\jwN67182 -> (JR.setField "currentIndex" "I" JR.this (JR.lit jwN67182))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentIndex") (JR.int 1)) ]), 
                    JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN67327 -> JR.andThen (JR.postUpdate (JR.thisField "currentIndex") (\jwN67334 -> (JR.setField "currentIndex" "I" JR.this (JR.lit jwN67334))) JR.increment) (\jiN67327 -> (JR.aset (JR.lit jaN67327) (JR.lit jiN67327) (JR.local "anyType"))))), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAt_1 : JR.Method
jm_removeAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "currentIndex")) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INDEX_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_SIZE ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "currentIndex") ]), 
                        JR.throw (JR.new (JR.newThrowable "IndexOutOfBoundsException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) ]) identity, 
                    JR.declare "oldValue" "" (JR.aget (JR.thisField "objectArray") (JR.local "index")), 
                    JR.declare "numMoved" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.thisField "currentIndex") (JR.local "index")) (JR.int 1)), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "numMoved") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.withState JR.arraycopy [ (JR.thisField "objectArray"), (JR.map2 JR.add (JR.local "index") (JR.int 1)), (JR.thisField "objectArray"), (JR.local "index"), (JR.local "numMoved") ]) ]) identity, 
                    JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN67933 -> JR.andThen (JR.update1 (JR.thisField "currentIndex") (\jwN67940 -> (JR.setField "currentIndex" "I" JR.this (JR.lit jwN67940))) JR.decrement) (\jiN67933 -> (JR.aset (JR.lit jaN67933) (JR.lit jiN67933) JR.null)))), 
                    JR.return (JR.local "oldValue") ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "anyType") JR.null) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "currentIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68799 -> (JR.setLocal "index" "I" (JR.lit jwN68799))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "objectArray") (JR.local "index")) JR.null) (JR.run [ 
                                JR.declare "numMoved" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.thisField "currentIndex") (JR.local "index")) (JR.int 1)), 
                                JR.ifElse (JR.map2 JR.greater (JR.local "numMoved") (JR.int 0)) (JR.run [ 
                                    JR.exec (JR.withState JR.arraycopy [ (JR.thisField "objectArray"), (JR.map2 JR.add (JR.local "index") (JR.int 1)), (JR.thisField "objectArray"), (JR.local "index"), (JR.local "numMoved") ]) ]) identity, 
                                JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN68694 -> JR.andThen (JR.update1 (JR.thisField "currentIndex") (\jwN68701 -> (JR.setField "currentIndex" "I" JR.this (JR.lit jwN68701))) JR.decrement) (\jiN68694 -> (JR.aset (JR.lit jaN68694) (JR.lit jiN68694) JR.null)))), 
                                JR.return (JR.bool True) ]) identity ]) ] ]) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "currentIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68453 -> (JR.setLocal "index" "I" (JR.lit jwN68453))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "anyType") (JR.aget (JR.thisField "objectArray") (JR.local "index"))) (JR.invoke "equals_1" (JR.local "anyType") [ (JR.aget (JR.thisField "objectArray") (JR.local "index")) ])) (JR.run [ 
                                JR.declare "numMoved" "I" (JR.map2 JR.sub (JR.map2 JR.sub (JR.thisField "currentIndex") (JR.local "index")) (JR.int 1)), 
                                JR.ifElse (JR.map2 JR.greater (JR.local "numMoved") (JR.int 0)) (JR.run [ 
                                    JR.exec (JR.withState JR.arraycopy [ (JR.thisField "objectArray"), (JR.map2 JR.add (JR.local "index") (JR.int 1)), (JR.thisField "objectArray"), (JR.local "index"), (JR.local "numMoved") ]) ]) identity, 
                                JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN68344 -> JR.andThen (JR.update1 (JR.thisField "currentIndex") (\jwN68351 -> (JR.setField "currentIndex" "I" JR.this (JR.lit jwN68351))) JR.decrement) (\jiN68344 -> (JR.aset (JR.lit jaN68344) (JR.lit jiN68344) JR.null)))), 
                                JR.return (JR.bool True) ]) identity ]) ] ]), 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAll2_1 : JR.Method
jm_removeAll2_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "result" "Z" (JR.bool True), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69097 -> (JR.setLocal "index" "I" (JR.lit jwN69097))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.invoke "remove_1" JR.this [ (JR.invoke "get_1" (JR.local "list") [ (JR.local "index") ]) ]) identity (JR.run [ 
                            JR.exec (JR.setLocal "result" "Z" (JR.bool False)) ]) ]) ], 
                    JR.return (JR.local "result") ])
        (jregister jheap)
        jthis
        jargs


jm_addAll2_1 : JR.Method
jm_addAll2_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.plus (JR.thisField "currentIndex") (JR.field "currentIndex" (JR.local "list"))) ]), 
                    JR.declare "listSize" "I" (JR.field "currentIndex" (JR.local "list")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "listSize")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69404 -> (JR.setLocal "index" "I" (JR.lit jwN69404))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN69288 -> JR.andThen (JR.postUpdate (JR.thisField "currentIndex") (\jwN69295 -> (JR.setField "currentIndex" "I" JR.this (JR.lit jwN69295))) JR.increment) (\jiN69288 -> (JR.aset (JR.lit jaN69288) (JR.lit jiN69288) (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")))))) ]) ], 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_addAllList_1 : JR.Method
jm_addAllList_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "newObjectArray" "" (JR.invoke "toArray_0" (JR.local "list") []), 
                    JR.return (JR.invoke "addAll_1" JR.this [ (JR.local "newObjectArray") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addAll_1 : JR.Method
jm_addAll_1 jheap jthis jargs =
    JR.method [ ( "newObjectArray", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "numSize" "I" (JR.alength (JR.local "newObjectArray")), 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentIndex") (JR.local "numSize")) ]), 
                    JR.exec (JR.withState JR.arraycopy [ (JR.local "newObjectArray"), (JR.int 0), (JR.thisField "objectArray"), (JR.thisField "currentIndex"), (JR.local "numSize") ]), 
                    JR.exec (JR.setField "currentIndex" "I" JR.this (JR.map2 JR.add (JR.thisField "currentIndex") (JR.local "numSize"))), 
                    JR.return (JR.map2 JR.notEquals (JR.local "numSize") (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_ensureCapacity_1 : JR.Method
jm_ensureCapacity_1 jheap jthis jargs =
    JR.method [ ( "minSize", "I" ) ] ""
        (JR.run [ 
                    JR.declare "oldCapacity" "I" (JR.alength (JR.thisField "objectArray")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "minSize") (JR.local "oldCapacity")) (JR.run [ 
                        JR.declare "newCapacity" "I" (JR.map2 JR.add ((JR.map2 JR.shr ((JR.map2 JR.mul (JR.local "oldCapacity") (JR.int 3))) (JR.int 1))) (JR.int 1)), 
                        JR.ifElse (JR.map2 JR.less (JR.local "newCapacity") (JR.local "minSize")) (JR.run [ 
                            JR.exec (JR.setLocal "newCapacity" "I" (JR.local "minSize")) ]) identity, 
                        JR.exec (JR.setField "objectArray" "" JR.this (JR.invoke "copyOf_2" (JR.thisField "arrayUtil") [ (JR.thisField "objectArray"), (JR.local "newCapacity") ])) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_trimToSize_0 : JR.Method
jm_trimToSize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "oldCapacity" "I" (JR.alength (JR.thisField "objectArray")), 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "currentIndex") (JR.local "oldCapacity")) (JR.run [ 
                        JR.exec (JR.setField "objectArray" "" JR.this (JR.invoke "copyOf_2" (JR.thisField "arrayUtil") [ (JR.thisField "objectArray"), (JR.thisField "currentIndex") ])) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_indexOf_1 : JR.Method
jm_indexOf_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "anyType") JR.null) (JR.run [ 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.thisField "currentIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN70704 -> (JR.setLocal "i" "I" (JR.lit jwN70704))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "objectArray") (JR.local "i")) JR.null) (JR.run [ 
                                JR.return (JR.local "i") ]) identity ]) ] ]) (JR.run [ 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.thisField "currentIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN70566 -> (JR.setLocal "i" "I" (JR.lit jwN70566))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "equals_1" (JR.local "anyType") [ (JR.aget (JR.thisField "objectArray") (JR.local "i")) ]) (JR.run [ 
                                JR.return (JR.local "i") ]) identity ]) ] ]), 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_lastIndexOf_1 : JR.Method
jm_lastIndexOf_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "anyType") JR.null) (JR.run [ 
                        JR.run [ JR.declare "i" "I" (JR.map2 JR.sub (JR.thisField "currentIndex") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "i") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN71106 -> (JR.setLocal "i" "I" (JR.lit jwN71106))) JR.decrement) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "objectArray") (JR.local "i")) JR.null) (JR.run [ 
                                JR.return (JR.local "i") ]) identity ]) ] ]) (JR.run [ 
                        JR.run [ JR.declare "i" "I" (JR.map2 JR.sub (JR.thisField "currentIndex") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "i") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN70959 -> (JR.setLocal "i" "I" (JR.lit jwN70959))) JR.decrement) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "equals_1" (JR.local "anyType") [ (JR.aget (JR.thisField "objectArray") (JR.local "i")) ]) (JR.run [ 
                                JR.return (JR.local "i") ]) identity ]) ] ]), 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "currentIndex")) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INDEX_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_SIZE ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "currentIndex") ]), 
                        JR.throw (JR.new (JR.newThrowable "IndexOutOfBoundsException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) ]) identity, 
                    JR.return (JR.aget (JR.thisField "objectArray") (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_set_2 : JR.Method
jm_set_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "element", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "currentIndex")) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INDEX_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_SIZE ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "currentIndex") ]), 
                        JR.throw (JR.new (JR.newThrowable "IndexOutOfBoundsException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) ]) identity, 
                    JR.declare "oldValue" "" (JR.aget (JR.thisField "objectArray") (JR.local "index")), 
                    JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN71886 -> JR.andThen (JR.local "index") (\jiN71886 -> (JR.aset (JR.lit jaN71886) (JR.lit jiN71886) (JR.local "element"))))), 
                    JR.return (JR.local "oldValue") ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.thisField "currentIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN72120 -> (JR.setLocal "i" "I" (JR.lit jwN72120))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "objectArray") (\jaN72034 -> JR.andThen (JR.local "i") (\jiN72034 -> (JR.aset (JR.lit jaN72034) (JR.lit jiN72034) JR.null)))) ]) ], 
                    JR.exec (JR.setField "currentIndex" "I" JR.this (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_size_0 : JR.Method
jm_size_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "currentIndex") ])
        (jregister jheap)
        jthis
        jargs


jm_isEmpty_0 : JR.Method
jm_isEmpty_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.map2 JR.equals (JR.thisField "currentIndex") (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_contains_1 : JR.Method
jm_contains_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" JR.this [ (JR.local "anyType") ]) (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_toArray_0 : JR.Method
jm_toArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "copyOf_2" (JR.thisField "arrayUtil") [ (JR.thisField "objectArray"), (JR.thisField "currentIndex") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toArrayType_1 : JR.Method
jm_toArrayType_1 jheap jthis jargs =
    JR.method [ ( "objectArray", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.alength (JR.local "objectArray")) (JR.thisField "currentIndex")) (JR.run [ 
                        JR.return (JR.invoke "copyOfType_3" (JR.thisField "arrayUtil") [ (JR.thisField "objectArray"), (JR.thisField "currentIndex"), (JR.getClass (JR.local "objectArray")) ]) ]) identity, 
                    JR.exec (JR.withState JR.arraycopy [ (JR.thisField "objectArray"), (JR.int 0), (JR.local "objectArray"), (JR.int 0), (JR.thisField "currentIndex") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.alength (JR.local "objectArray")) (JR.thisField "currentIndex")) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "objectArray") (\jaN72712 -> JR.andThen (JR.thisField "currentIndex") (\jiN72712 -> (JR.aset (JR.lit jaN72712) (JR.lit jiN72712) JR.null)))) ]) identity, 
                    JR.return (JR.local "objectArray") ])
        (jregister jheap)
        jthis
        jargs


jm_clone_0 : JR.Method
jm_clone_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" JR.this []), 
                    JR.declare "list" "" (JR.new jnew_1 [ (JR.local "size") ]), 
                    JR.declare "anyType" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN73092 -> (JR.setLocal "index" "I" (JR.lit jwN73092))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "anyType" "" (JR.aget (JR.thisField "objectArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "anyType") ]) ]) ], 
                    JR.return (JR.local "list") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "COMMA_SEP" "" (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "currentIndex")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN73411 -> (JR.setLocal "index" "I" (JR.lit jwN73411))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.aget (JR.thisField "objectArray") (JR.local "index")) []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "COMMA_SEP") ]) ]) ], 
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

