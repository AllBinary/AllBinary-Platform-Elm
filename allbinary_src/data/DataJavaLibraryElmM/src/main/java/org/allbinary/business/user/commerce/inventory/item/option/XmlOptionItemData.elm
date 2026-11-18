module Org.Allbinary.Business.User.Commerce.Inventory.Item.Option.XmlOptionItemData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.item.option
-}

import JR



jclass : String
jclass =
    "XmlOptionItemData"


jchain : List String
jchain =
    [ "XmlOptionItemData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "XmlOptionItemData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_XML_FILE_STATUS", jstatic_XML_FILE_STATUS ), ( "jstatic_OPTION_XML_FILE", jstatic_OPTION_XML_FILE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_XML_FILE_STATUS : JR.M
jstatic_XML_FILE_STATUS s =
    JR.static "XmlOptionItemData" jclinit "XML_FILE_STATUS"
        (JR.str "XMLOPTIONITEM_XML_FILE_STATUS")
        s


jstatic_OPTION_XML_FILE : JR.M
jstatic_OPTION_XML_FILE s =
    JR.static "XmlOptionItemData" jclinit "OPTION_XML_FILE"
        (JR.str "XMLOPTIONITEM_OPTION_XML_FILE")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

