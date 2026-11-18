module Org.Allbinary.Business.User.Commerce.Inventory.Item.Download.DownloadItemData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.commerce.inventory.item.download
-}

import JR



jclass : String
jclass =
    "DownloadItemData"


jchain : List String
jchain =
    [ "DownloadItemData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DownloadItemData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_ID", jstatic_ID ), ( "jstatic_SYSTEM", jstatic_SYSTEM ), ( "jstatic_PLATFORM", jstatic_PLATFORM ), ( "jstatic_SPECIAL_NAME", jstatic_SPECIAL_NAME ), ( "jstatic_VERSION", jstatic_VERSION ), ( "jstatic_CHANGES", jstatic_CHANGES ), ( "jstatic_LICENSE_FILE", jstatic_LICENSE_FILE ), ( "jstatic_FILE", jstatic_FILE ), ( "jstatic_EXTRA_FILES", jstatic_EXTRA_FILES ), ( "jstatic_SIZE", jstatic_SIZE ), ( "jstatic_VALID_TIME", jstatic_VALID_TIME ), ( "jstatic_VALID_TIME_YEARS", jstatic_VALID_TIME_YEARS ), ( "jstatic_VALID_TIME_MONTHS", jstatic_VALID_TIME_MONTHS ), ( "jstatic_VALID_TIME_DAYS", jstatic_VALID_TIME_DAYS ), ( "jstatic_VALID_TIME_HOURS", jstatic_VALID_TIME_HOURS ), ( "jstatic_VALID_TIME_MINUTES", jstatic_VALID_TIME_MINUTES ), ( "jstatic_VALID_TIME_SECONDS", jstatic_VALID_TIME_SECONDS ), ( "jstatic_RETRIES", jstatic_RETRIES ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "DownloadItemData" jclinit "NAME"
        (JR.str "DOWNLOADITEM_NAME")
        s


jstatic_ID : JR.M
jstatic_ID s =
    JR.static "DownloadItemData" jclinit "ID"
        (JR.str "DOWNLOADITEM_ID")
        s


jstatic_SYSTEM : JR.M
jstatic_SYSTEM s =
    JR.static "DownloadItemData" jclinit "SYSTEM"
        (JR.str "DOWNLOADITEM_SYSTEM")
        s


jstatic_PLATFORM : JR.M
jstatic_PLATFORM s =
    JR.static "DownloadItemData" jclinit "PLATFORM"
        (JR.str "DOWNLOADITEM_PLATFORM")
        s


jstatic_SPECIAL_NAME : JR.M
jstatic_SPECIAL_NAME s =
    JR.static "DownloadItemData" jclinit "SPECIAL_NAME"
        (JR.str "DOWNLOADITEM_SPECIAL_NAME")
        s


jstatic_VERSION : JR.M
jstatic_VERSION s =
    JR.static "DownloadItemData" jclinit "VERSION"
        (JR.str "DOWNLOADITEM_VERSION")
        s


jstatic_CHANGES : JR.M
jstatic_CHANGES s =
    JR.static "DownloadItemData" jclinit "CHANGES"
        (JR.str "DOWNLOADITEM_CHANGES")
        s


jstatic_LICENSE_FILE : JR.M
jstatic_LICENSE_FILE s =
    JR.static "DownloadItemData" jclinit "LICENSE_FILE"
        (JR.str "DOWNLOADITEM_LICENSE_FILE")
        s


jstatic_FILE : JR.M
jstatic_FILE s =
    JR.static "DownloadItemData" jclinit "FILE"
        (JR.str "DOWNLOADITEM_FILE")
        s


jstatic_EXTRA_FILES : JR.M
jstatic_EXTRA_FILES s =
    JR.static "DownloadItemData" jclinit "EXTRA_FILES"
        (JR.str "DOWNLOADITEM_EXTRA_FILES")
        s


jstatic_SIZE : JR.M
jstatic_SIZE s =
    JR.static "DownloadItemData" jclinit "SIZE"
        (JR.str "DOWNLOADITEM_SIZE")
        s


jstatic_VALID_TIME : JR.M
jstatic_VALID_TIME s =
    JR.static "DownloadItemData" jclinit "VALID_TIME"
        (JR.str "DOWNLOADITEM_VALID_TIME")
        s


jstatic_VALID_TIME_YEARS : JR.M
jstatic_VALID_TIME_YEARS s =
    JR.static "DownloadItemData" jclinit "VALID_TIME_YEARS"
        (JR.str "DOWNLOADITEM_VALID_TIME_YEAR")
        s


jstatic_VALID_TIME_MONTHS : JR.M
jstatic_VALID_TIME_MONTHS s =
    JR.static "DownloadItemData" jclinit "VALID_TIME_MONTHS"
        (JR.str "DOWNLOADITEM_VALID_TIME_MONTH")
        s


jstatic_VALID_TIME_DAYS : JR.M
jstatic_VALID_TIME_DAYS s =
    JR.static "DownloadItemData" jclinit "VALID_TIME_DAYS"
        (JR.str "DOWNLOADITEM_VALID_TIME_DAY")
        s


jstatic_VALID_TIME_HOURS : JR.M
jstatic_VALID_TIME_HOURS s =
    JR.static "DownloadItemData" jclinit "VALID_TIME_HOURS"
        (JR.str "DOWNLOADITEM_VALID_TIME_HOUR")
        s


jstatic_VALID_TIME_MINUTES : JR.M
jstatic_VALID_TIME_MINUTES s =
    JR.static "DownloadItemData" jclinit "VALID_TIME_MINUTES"
        (JR.str "DOWNLOADITEM_VALID_TIME_MINUTES")
        s


jstatic_VALID_TIME_SECONDS : JR.M
jstatic_VALID_TIME_SECONDS s =
    JR.static "DownloadItemData" jclinit "VALID_TIME_SECONDS"
        (JR.str "DOWNLOADITEM_VALID_TIME_SECONDS")
        s


jstatic_RETRIES : JR.M
jstatic_RETRIES s =
    JR.static "DownloadItemData" jclinit "RETRIES"
        (JR.str "DOWNLOADITEM_RETRIES")
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

