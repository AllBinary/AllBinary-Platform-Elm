module Org.Allbinary.Business.Advertisement.Search.AdvertisementSearchData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement.search
-}

import JR



jclass : String
jclass =
    "AdvertisementSearchData"


jchain : List String
jchain =
    [ "AdvertisementSearchData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TITLE", JR.defaultOf "" ), ( "PRICE", JR.defaultOf "" ), ( "RELEVANCY", JR.defaultOf "" ), ( "POPULARITY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdvertisementSearchData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AdvertisementSearchData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TITLE" "" JR.this (JR.str "AFFILIATE_TITLE")),
                JR.exec (JR.setField "PRICE" "" JR.this (JR.str "AFFILIATE_PRICE")),
                JR.exec (JR.setField "RELEVANCY" "" JR.this (JR.str "AFFILIATE_RELEVANCY")),
                JR.exec (JR.setField "POPULARITY" "" JR.this (JR.str "AFFILIATE_POPULARITY")),
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

