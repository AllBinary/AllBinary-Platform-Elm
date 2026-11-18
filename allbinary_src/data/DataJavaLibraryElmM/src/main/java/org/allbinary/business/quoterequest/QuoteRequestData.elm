module Org.Allbinary.Business.Quoterequest.QuoteRequestData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.quoterequest
-}

import JR



jclass : String
jclass =
    "QuoteRequestData"


jchain : List String
jchain =
    [ "QuoteRequestData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ID", JR.defaultOf "" ), ( "PROJECT_INFO", JR.defaultOf "" ), ( "CUSTOMER_COMMENTS", JR.defaultOf "" ), ( "BUDGET", JR.defaultOf "" ), ( "TIMEFRAME", JR.defaultOf "" ), ( "COMMENTS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "QuoteRequestData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "QuoteRequestData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ID" "" JR.this (JR.str "QUOTEREQUEST_ID")),
                JR.exec (JR.setField "PROJECT_INFO" "" JR.this (JR.str "QUOTEREQUEST_PROJECT_INFO")),
                JR.exec (JR.setField "CUSTOMER_COMMENTS" "" JR.this (JR.str "QUOTEREQUEST_CUSTOMER_COMMENTS")),
                JR.exec (JR.setField "BUDGET" "" JR.this (JR.str "QUOTEREQUEST_BUDGET")),
                JR.exec (JR.setField "TIMEFRAME" "" JR.this (JR.str "QUOTEREQUEST_TIMEFRAME")),
                JR.exec (JR.setField "COMMENTS" "" JR.this (JR.str "QUOTEREQUEST_COMMENTS")),
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

