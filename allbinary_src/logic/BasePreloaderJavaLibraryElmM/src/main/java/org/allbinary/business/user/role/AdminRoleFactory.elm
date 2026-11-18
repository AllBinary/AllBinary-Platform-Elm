module Org.Allbinary.Business.User.Role.AdminRoleFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.role
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Business.User.Role.BasicUserRoleFactory as BasicUserRoleFactory


jclass : String
jclass =
    "AdminRoleFactory"


jchain : List String
jchain =
    [ "AdminRoleFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "adminRoles", JR.defaultOf "" ), ( "storeAdminRoles", JR.defaultOf "" ), ( "storeManagementRoles", JR.defaultOf "" ), ( "productManagementRoles", JR.defaultOf "" ), ( "reviewManagementRoles", JR.defaultOf "" ), ( "customerManagementRoles", JR.defaultOf "" ), ( "workflowManagementRoles", JR.defaultOf "" ), ( "orderManagementRoles", JR.defaultOf "" ), ( "adjusterManagementRoles", JR.defaultOf "" ), ( "shippingManagementRoles", JR.defaultOf "" ), ( "webManagementRoles", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getProductManagementRoles_0", jm_getProductManagementRoles_0 )
        , ( "getAdminRoles_0", jm_getAdminRoles_0 )
        , ( "getStoreAdminRoles_0", jm_getStoreAdminRoles_0 )
        , ( "getStoreManagementRoles_0", jm_getStoreManagementRoles_0 )
        , ( "getReviewManagementRoles_0", jm_getReviewManagementRoles_0 )
        , ( "getCustomerManagementRoles_0", jm_getCustomerManagementRoles_0 )
        , ( "getWorkflowManagementRoles_0", jm_getWorkflowManagementRoles_0 )
        , ( "getWebManagementRoles_0", jm_getWebManagementRoles_0 )
        , ( "getShippingManagementRoles_0", jm_getShippingManagementRoles_0 )
        , ( "getAdjusterManagementRoles_0", jm_getAdjusterManagementRoles_0 )
        , ( "getOrderManagementRoles_0", jm_getOrderManagementRoles_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdminRoleFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getProductManagementRoles_0", jm_getProductManagementRoles_0 ), ( "jm_getAdminRoles_0", jm_getAdminRoles_0 ), ( "jm_getStoreAdminRoles_0", jm_getStoreAdminRoles_0 ), ( "jm_getStoreManagementRoles_0", jm_getStoreManagementRoles_0 ), ( "jm_getReviewManagementRoles_0", jm_getReviewManagementRoles_0 ), ( "jm_getCustomerManagementRoles_0", jm_getCustomerManagementRoles_0 ), ( "jm_getWorkflowManagementRoles_0", jm_getWorkflowManagementRoles_0 ), ( "jm_getWebManagementRoles_0", jm_getWebManagementRoles_0 ), ( "jm_getShippingManagementRoles_0", jm_getShippingManagementRoles_0 ), ( "jm_getAdjusterManagementRoles_0", jm_getAdjusterManagementRoles_0 ), ( "jm_getOrderManagementRoles_0", jm_getOrderManagementRoles_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AdminRoleFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "adminRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "storeAdminRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "storeManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "productManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "reviewManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "customerManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "workflowManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "orderManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "adjusterManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "shippingManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "webManagementRoles" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "basicUserRoleFactory" "" (JR.callStatic BasicUserRoleFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "adminRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeAdminRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeAdminRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "CUSTOMERMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "ADJUSTER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "PRODUCTMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "REVIEWER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "storeManagementRoles") [ (JR.field "SHIPPING" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "productManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "productManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "productManagementRoles") [ (JR.field "PRODUCTMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "reviewManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "reviewManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "reviewManagementRoles") [ (JR.field "REVIEWER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "customerManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "customerManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "customerManagementRoles") [ (JR.field "CUSTOMERMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "workflowManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "workflowManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "workflowManagementRoles") [ (JR.field "WORKFLOWEDITOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "orderManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "orderManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "adjusterManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "adjusterManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "adjusterManagementRoles") [ (JR.field "ADJUSTER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "shippingManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "shippingManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "shippingManagementRoles") [ (JR.field "SHIPPING" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "webManagementRoles") [ (JR.field "ADMINISTRATOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "webManagementRoles") [ (JR.field "STOREMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "webManagementRoles") [ (JR.field "WEBMANAGER" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "webManagementRoles") [ (JR.field "WORKFLOWEDITOR" (JR.local "basicUserRoleFactory")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "webManagementRoles") [ (JR.field "VIEWEDITOR" (JR.local "basicUserRoleFactory")) ]) ]) ])
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


jm_getProductManagementRoles_0 : JR.Method
jm_getProductManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "productManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminRoles_0 : JR.Method
jm_getAdminRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getStoreAdminRoles_0 : JR.Method
jm_getStoreAdminRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "storeAdminRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getStoreManagementRoles_0 : JR.Method
jm_getStoreManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "storeManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getReviewManagementRoles_0 : JR.Method
jm_getReviewManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "reviewManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getCustomerManagementRoles_0 : JR.Method
jm_getCustomerManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "customerManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getWorkflowManagementRoles_0 : JR.Method
jm_getWorkflowManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "workflowManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getWebManagementRoles_0 : JR.Method
jm_getWebManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "webManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getShippingManagementRoles_0 : JR.Method
jm_getShippingManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "shippingManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getAdjusterManagementRoles_0 : JR.Method
jm_getAdjusterManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adjusterManagementRoles") ])
        (jregister jheap)
        jthis
        jargs


jm_getOrderManagementRoles_0 : JR.Method
jm_getOrderManagementRoles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "orderManagementRoles") ])
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

