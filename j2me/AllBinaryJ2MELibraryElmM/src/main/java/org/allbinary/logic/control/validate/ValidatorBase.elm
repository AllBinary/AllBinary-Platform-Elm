module Org.Allbinary.Logic.Control.Validate.ValidatorBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.control.validate
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.Control.Validate.ValidatorBaseInterface as ValidatorBaseInterface


jclass : String
jclass =
    "ValidatorBase"


jchain : List String
jchain =
    [ "ValidatorBase" ]
        ++ ValidatorBaseInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "validationInfo_0", jm_validationInfo_0 )
        , ( "toHashtable_0", jm_toHashtable_0 )
        , ( "toList_0", jm_toList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ValidatorBase"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_validationInfo_0", jm_validationInfo_0 ), ( "jm_toHashtable_0", jm_toHashtable_0 ), ( "jm_toList_0", jm_toList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ValidatorBase" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_0 : JR.Method
jm_isValid_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "TRUE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_validationInfo_0 : JR.Method
jm_validationInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_toHashtable_0 : JR.Method
jm_toHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_TABLE" (JR.callStatic StdUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_toList_0 : JR.Method
jm_toList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ])
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

