module Org.Allbinary.Logic.Io.File.Visitor.BooleanFileVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.visitor
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.Util.Visitor.VisitorInterface as VisitorInterface


jclass : String
jclass =
    "BooleanFileVisitor"


jchain : List String
jchain =
    [ "BooleanFileVisitor" ]
        ++ VisitorInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "filterStringBasicArrayList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 )
        , ( "getFilterStringBasicArrayList_0", jm_getFilterStringBasicArrayList_0 )
        , ( "setFilterStringBasicArrayList_1", jm_setFilterStringBasicArrayList_1 )
        , ( "visit_2", jm_visit_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BooleanFileVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jm_getFilterStringBasicArrayList_0", jm_getFilterStringBasicArrayList_0 ), ( "jm_setFilterStringBasicArrayList_1", jm_setFilterStringBasicArrayList_1 ), ( "jm_visit_2", jm_visit_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "filterStringBasicArrayList", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setFilterStringBasicArrayList_1" JR.this [ (JR.local "filterStringBasicArrayList") ]), 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Filter BasicArrayList: ") (JR.invoke "toString_0" (JR.invoke "getFilterStringBasicArrayList_0" JR.this []) [])), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "visit_1" JR.this [ (JR.local "anyType") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFilterStringBasicArrayList_0 : JR.Method
jm_getFilterStringBasicArrayList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "filterStringBasicArrayList") ])
        (jregister jheap)
        jthis
        jargs


jm_setFilterStringBasicArrayList_1 : JR.Method
jm_setFilterStringBasicArrayList_1 jheap jthis jargs =
    JR.method [ ( "filterStringBasicArrayList", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "filterStringBasicArrayList" "" JR.this (JR.local "filterStringBasicArrayList")) ])
        (jregister jheap)
        jthis
        jargs


jm_visit_2 : JR.Method
jm_visit_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "fileNameString", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

