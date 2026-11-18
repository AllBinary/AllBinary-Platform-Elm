module Org.Allbinary.Business.Context.Modules.Storefront.StoreFrontData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.context.modules.storefront
-}

import JR



jclass : String
jclass =
    "StoreFrontData"


jchain : List String
jchain =
    [ "StoreFrontData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "CANCEL", JR.defaultOf "" ), ( "SELECT", JR.defaultOf "" ), ( "INSTALL", JR.defaultOf "" ), ( "INSTALL_COMPLETE", JR.defaultOf "" ), ( "NAME", JR.defaultOf "" ), ( "CURRENTHOSTNAME", JR.defaultOf "" ), ( "CURRENTHOSTNAMEPATH", JR.defaultOf "" ), ( "CURRENTHOMEHOSTNAME", JR.defaultOf "" ), ( "CURRENTHOMEHOSTNAMEPATH", JR.defaultOf "" ), ( "HOMEHOSTNAME", JR.defaultOf "" ), ( "HOMEHOSTNAMEPATH", JR.defaultOf "" ), ( "HOSTNAME", JR.defaultOf "" ), ( "HOSTNAMEPATH", JR.defaultOf "" ), ( "TESTHOMEHOSTNAME", JR.defaultOf "" ), ( "TESTHOMEHOSTNAMEPATH", JR.defaultOf "" ), ( "TESTHOSTNAME", JR.defaultOf "" ), ( "TESTHOSTNAMEPATH", JR.defaultOf "" ), ( "IMAGEPATH", JR.defaultOf "" ), ( "STATICPATH", JR.defaultOf "" ), ( "CATEGORYPATH", JR.defaultOf "" ), ( "INVENTORYCONTROL", JR.defaultOf "" ), ( "CONFIGURATION", JR.defaultOf "" ), ( "SUBSTORES", JR.defaultOf "" ), ( "TAGLOCATION", JR.defaultOf "" ), ( "PACKAGELOCATION", JR.defaultOf "" ), ( "FTP", JR.defaultOf "" ), ( "FTPPATH", JR.defaultOf "" ), ( "FTPUSERNAME", JR.defaultOf "" ), ( "FTPPASSWORD", JR.defaultOf "" ), ( "TESTFTP", JR.defaultOf "" ), ( "TESTFTPPATH", JR.defaultOf "" ), ( "TESTFTPUSERNAME", JR.defaultOf "" ), ( "TESTFTPPASSWORD", JR.defaultOf "" ), ( "SELECTSTORENAME", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StoreFrontData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "StoreFrontData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "CANCEL" "" JR.this (JR.str "Cancel Store Front")),
                JR.exec (JR.setField "SELECT" "" JR.this (JR.str "Select Store Front")),
                JR.exec (JR.setField "INSTALL" "" JR.this (JR.str "Install Store Front")),
                JR.exec (JR.setField "INSTALL_COMPLETE" "" JR.this (JR.str "Install Store Front Complete")),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "STOREFRONT_NAME")),
                JR.exec (JR.setField "CURRENTHOSTNAME" "" JR.this (JR.str "STOREFRONT_CURRENTHOSTNAME")),
                JR.exec (JR.setField "CURRENTHOSTNAMEPATH" "" JR.this (JR.str "STOREFRONT_CURRENTHOSTNAMEPATH")),
                JR.exec (JR.setField "CURRENTHOMEHOSTNAME" "" JR.this (JR.str "STOREFRONT_CURRENTHOMEHOSTNAME")),
                JR.exec (JR.setField "CURRENTHOMEHOSTNAMEPATH" "" JR.this (JR.str "STOREFRONT_CURRENTHOMEHOSTNAMEPATH")),
                JR.exec (JR.setField "HOMEHOSTNAME" "" JR.this (JR.str "STOREFRONT_HOMEHOSTNAME")),
                JR.exec (JR.setField "HOMEHOSTNAMEPATH" "" JR.this (JR.str "STOREFRONT_HOMEHOSTNAMEPATH")),
                JR.exec (JR.setField "HOSTNAME" "" JR.this (JR.str "STOREFRONT_HOSTNAME")),
                JR.exec (JR.setField "HOSTNAMEPATH" "" JR.this (JR.str "STOREFRONT_HOSTNAMEPATH")),
                JR.exec (JR.setField "TESTHOMEHOSTNAME" "" JR.this (JR.str "STOREFRONT_TESTHOMEHOSTNAME")),
                JR.exec (JR.setField "TESTHOMEHOSTNAMEPATH" "" JR.this (JR.str "STOREFRONT_TESTHOMEHOSTNAMEPATH")),
                JR.exec (JR.setField "TESTHOSTNAME" "" JR.this (JR.str "STOREFRONT_TESTHOSTNAME")),
                JR.exec (JR.setField "TESTHOSTNAMEPATH" "" JR.this (JR.str "STOREFRONT_TESTHOSTNAMEPATH")),
                JR.exec (JR.setField "IMAGEPATH" "" JR.this (JR.str "STOREFRONT_IMAGEPATH")),
                JR.exec (JR.setField "STATICPATH" "" JR.this (JR.str "STOREFRONT_STATICPATH")),
                JR.exec (JR.setField "CATEGORYPATH" "" JR.this (JR.str "STOREFRONT_CATEGORYPATH")),
                JR.exec (JR.setField "INVENTORYCONTROL" "" JR.this (JR.str "STOREFRONT_INVENTORYCONTROL")),
                JR.exec (JR.setField "CONFIGURATION" "" JR.this (JR.str "STOREFRONT_CONFIGURATION")),
                JR.exec (JR.setField "SUBSTORES" "" JR.this (JR.str "STOREFRONT_SUBSTORES")),
                JR.exec (JR.setField "TAGLOCATION" "" JR.this (JR.str "STOREFRONT_TAGLOCATION")),
                JR.exec (JR.setField "PACKAGELOCATION" "" JR.this (JR.str "STOREFRONT_PACKAGELOCATION")),
                JR.exec (JR.setField "FTP" "" JR.this (JR.str "STOREFRONT_FTP")),
                JR.exec (JR.setField "FTPPATH" "" JR.this (JR.str "STOREFRONT_FTPPATH")),
                JR.exec (JR.setField "FTPUSERNAME" "" JR.this (JR.str "STOREFRONT_FTPUSERNAME")),
                JR.exec (JR.setField "FTPPASSWORD" "" JR.this (JR.str "STOREFRONT_FTPPASSWORD")),
                JR.exec (JR.setField "TESTFTP" "" JR.this (JR.str "STOREFRONT_TESTFTP")),
                JR.exec (JR.setField "TESTFTPPATH" "" JR.this (JR.str "STOREFRONT_TESTFTPPATH")),
                JR.exec (JR.setField "TESTFTPUSERNAME" "" JR.this (JR.str "STOREFRONT_TESTFTPUSERNAME")),
                JR.exec (JR.setField "TESTFTPPASSWORD" "" JR.this (JR.str "STOREFRONT_TESTFTPPASSWORD")),
                JR.exec (JR.setField "SELECTSTORENAME" "" JR.this (JR.str "STOREFRONT_SELECTSTORENAME")),
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

