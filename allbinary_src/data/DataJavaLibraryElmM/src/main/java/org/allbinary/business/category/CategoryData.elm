module Org.Allbinary.Business.Category.CategoryData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.category
-}

import JR
import Org.Allbinary.Logic.Io.File.CommonDataFileStrings as CommonDataFileStrings


jclass : String
jclass =
    "CategoryData"


jchain : List String
jchain =
    [ "CategoryData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PARENT", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ), ( "PATH", JR.defaultOf "" ), ( "LABEL", JR.defaultOf "" ), ( "VIEW", JR.defaultOf "" ), ( "LEVEL", JR.defaultOf "" ), ( "REQUEST", JR.defaultOf "" ), ( "ROOTCATEGORY", JR.defaultOf "" ), ( "UNCRYPTED_EXTENSION", JR.defaultOf "" ), ( "ENCRYPTED_EXTENSION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CategoryData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CategoryData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PARENT" "" JR.this (JR.str "CATEGORY_PARENT")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "CATEGORY_NAME")),
                JR.exec (JR.setField "PATH" "" JR.this (JR.str "CATEGORY_PATH")),
                JR.exec (JR.setField "LABEL" "" JR.this (JR.str "CATEGORY_LABEL")),
                JR.exec (JR.setField "VIEW" "" JR.this (JR.str "CATEGORY_VIEW_CATEGORY")),
                JR.exec (JR.setField "LEVEL" "" JR.this (JR.str "CATEGORY_LEVEL")),
                JR.exec (JR.setField "REQUEST" "" JR.this (JR.str "request")),
                JR.exec (JR.setField "ROOTCATEGORY" "" JR.this (JR.str "Category")),
                JR.exec (JR.setField "UNCRYPTED_EXTENSION" "" JR.this (JR.field "UNCRYPTED_EXTENSION" (JR.callStatic CommonDataFileStrings.jm_getInstance_0 []))),
                JR.exec (JR.setField "ENCRYPTED_EXTENSION" "" JR.this (JR.field "ENCRYPTED_EXTENSION" (JR.callStatic CommonDataFileStrings.jm_getInstance_0 []))),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

