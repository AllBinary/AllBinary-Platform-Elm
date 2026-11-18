module Org.Allbinary.Opengles.JOGL11 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.opengles
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL11 as GL11
import Org.Allbinary.Opengles.JOGL10 as JOGL10


jclass : String
jclass =
    "JOGL11"


jchain : List String
jchain =
    [ "JOGL11" ]
        ++ JOGL10.jchain
        ++ GL11.jchain


jfields : List ( String, JR.JValue )
jfields =
    JOGL10.jfields ++ [ ( "gl11", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "glBindBuffer_2", jm_glBindBuffer_2 )
        , ( "glBufferData_4", jm_glBufferData_4 )
        , ( "glBufferSubData_4", jm_glBufferSubData_4 )
        , ( "glClipPlanef_3", jm_glClipPlanef_3 )
        , ( "glClipPlanef_2", jm_glClipPlanef_2 )
        , ( "glColor4ub_4", jm_glColor4ub_4 )
        , ( "glColorPointer_4", jm_glColorPointer_4 )
        , ( "glDeleteBuffers_3", jm_glDeleteBuffers_3 )
        , ( "glDeleteBuffers_2", jm_glDeleteBuffers_2 )
        , ( "glDrawElements_4", jm_glDrawElements_4 )
        , ( "glGenBuffers_3", jm_glGenBuffers_3 )
        , ( "glGenBuffers_2", jm_glGenBuffers_2 )
        , ( "glGetBufferParameteriv_4", jm_glGetBufferParameteriv_4 )
        , ( "glGetBufferParameteriv_3", jm_glGetBufferParameteriv_3 )
        , ( "glGetClipPlanef_3", jm_glGetClipPlanef_3 )
        , ( "glGetClipPlanef_2", jm_glGetClipPlanef_2 )
        , ( "glGetFloatv_3", jm_glGetFloatv_3 )
        , ( "glGetFloatv_2", jm_glGetFloatv_2 )
        , ( "glGetLightfv_4", jm_glGetLightfv_4 )
        , ( "glGetLightfv_3", jm_glGetLightfv_3 )
        , ( "glGetMaterialfv_4", jm_glGetMaterialfv_4 )
        , ( "glGetMaterialfv_3", jm_glGetMaterialfv_3 )
        , ( "glGetTexEnviv_4", jm_glGetTexEnviv_4 )
        , ( "glGetTexEnviv_3", jm_glGetTexEnviv_3 )
        , ( "glGetTexParameterfv_4", jm_glGetTexParameterfv_4 )
        , ( "glGetTexParameterfv_3", jm_glGetTexParameterfv_3 )
        , ( "glGetTexParameteriv_4", jm_glGetTexParameteriv_4 )
        , ( "glGetTexParameteriv_3", jm_glGetTexParameteriv_3 )
        , ( "glIsBuffer_1", jm_glIsBuffer_1 )
        , ( "glIsEnabled_1", jm_glIsEnabled_1 )
        , ( "glIsTexture_1", jm_glIsTexture_1 )
        , ( "glNormalPointer_3", jm_glNormalPointer_3 )
        , ( "glPointParameterf_2", jm_glPointParameterf_2 )
        , ( "glPointParameterfv_3", jm_glPointParameterfv_3 )
        , ( "glPointParameterfv_2", jm_glPointParameterfv_2 )
        , ( "glTexCoordPointer_4", jm_glTexCoordPointer_4 )
        , ( "glTexEnvi_3", jm_glTexEnvi_3 )
        , ( "glTexEnviv_4", jm_glTexEnviv_4 )
        , ( "glTexEnviv_3", jm_glTexEnviv_3 )
        , ( "glTexParameterfv_4", jm_glTexParameterfv_4 )
        , ( "glTexParameterfv_3", jm_glTexParameterfv_3 )
        , ( "glTexParameteri_3", jm_glTexParameteri_3 )
        , ( "glTexParameteriv_4", jm_glTexParameteriv_4 )
        , ( "glTexParameteriv_3", jm_glTexParameteriv_3 )
        , ( "glTexParameterxv_4", jm_glTexParameterxv_4 )
        , ( "glVertexPointer_4", jm_glVertexPointer_4 ) ]
        JOGL10.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "JOGL11"
        [ ( "jm_glBindBuffer_2", jm_glBindBuffer_2 ), ( "jm_glBufferData_4", jm_glBufferData_4 ), ( "jm_glBufferSubData_4", jm_glBufferSubData_4 ), ( "jm_glClipPlanef_3", jm_glClipPlanef_3 ), ( "jm_glClipPlanef_2", jm_glClipPlanef_2 ), ( "jm_glColor4ub_4", jm_glColor4ub_4 ), ( "jm_glColorPointer_4", jm_glColorPointer_4 ), ( "jm_glDeleteBuffers_3", jm_glDeleteBuffers_3 ), ( "jm_glDeleteBuffers_2", jm_glDeleteBuffers_2 ), ( "jm_glDrawElements_4", jm_glDrawElements_4 ), ( "jm_glGenBuffers_3", jm_glGenBuffers_3 ), ( "jm_glGenBuffers_2", jm_glGenBuffers_2 ), ( "jm_glGetBufferParameteriv_4", jm_glGetBufferParameteriv_4 ), ( "jm_glGetBufferParameteriv_3", jm_glGetBufferParameteriv_3 ), ( "jm_glGetClipPlanef_3", jm_glGetClipPlanef_3 ), ( "jm_glGetClipPlanef_2", jm_glGetClipPlanef_2 ), ( "jm_glGetFloatv_3", jm_glGetFloatv_3 ), ( "jm_glGetFloatv_2", jm_glGetFloatv_2 ), ( "jm_glGetLightfv_4", jm_glGetLightfv_4 ), ( "jm_glGetLightfv_3", jm_glGetLightfv_3 ), ( "jm_glGetMaterialfv_4", jm_glGetMaterialfv_4 ), ( "jm_glGetMaterialfv_3", jm_glGetMaterialfv_3 ), ( "jm_glGetTexEnviv_4", jm_glGetTexEnviv_4 ), ( "jm_glGetTexEnviv_3", jm_glGetTexEnviv_3 ), ( "jm_glGetTexParameterfv_4", jm_glGetTexParameterfv_4 ), ( "jm_glGetTexParameterfv_3", jm_glGetTexParameterfv_3 ), ( "jm_glGetTexParameteriv_4", jm_glGetTexParameteriv_4 ), ( "jm_glGetTexParameteriv_3", jm_glGetTexParameteriv_3 ), ( "jm_glIsBuffer_1", jm_glIsBuffer_1 ), ( "jm_glIsEnabled_1", jm_glIsEnabled_1 ), ( "jm_glIsTexture_1", jm_glIsTexture_1 ), ( "jm_glNormalPointer_3", jm_glNormalPointer_3 ), ( "jm_glPointParameterf_2", jm_glPointParameterf_2 ), ( "jm_glPointParameterfv_3", jm_glPointParameterfv_3 ), ( "jm_glPointParameterfv_2", jm_glPointParameterfv_2 ), ( "jm_glTexCoordPointer_4", jm_glTexCoordPointer_4 ), ( "jm_glTexEnvi_3", jm_glTexEnvi_3 ), ( "jm_glTexEnviv_4", jm_glTexEnviv_4 ), ( "jm_glTexEnviv_3", jm_glTexEnviv_3 ), ( "jm_glTexParameterfv_4", jm_glTexParameterfv_4 ), ( "jm_glTexParameterfv_3", jm_glTexParameterfv_3 ), ( "jm_glTexParameteri_3", jm_glTexParameteri_3 ), ( "jm_glTexParameteriv_4", jm_glTexParameteriv_4 ), ( "jm_glTexParameteriv_3", jm_glTexParameteriv_3 ), ( "jm_glTexParameterxv_4", jm_glTexParameterxv_4 ), ( "jm_glVertexPointer_4", jm_glVertexPointer_4 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect jinit_2 JR.this [ (JR.local "gl"), (JR.local "gl") ]),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "gl2", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect JOGL10.jinit_2 JR.this [ (JR.local "gl"), (JR.local "gl2") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gl11" "" JR.this (JR.invoke "getJOGLGL_0" JR.this [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_glBindBuffer_2 : JR.Method
jm_glBindBuffer_2 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "buffer", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glBindBuffer_2" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "buffer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glBufferData_4 : JR.Method
jm_glBufferData_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "size", "I" ), ( "data", "" ), ( "usage", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glBufferData_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "size"), (JR.local "data"), (JR.local "usage") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glBufferSubData_4 : JR.Method
jm_glBufferSubData_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "offset", "I" ), ( "size", "I" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glBufferSubData_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "offset"), (JR.local "size"), (JR.local "data") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClipPlanef_3 : JR.Method
jm_glClipPlanef_3 jheap jthis jargs =
    JR.method [ ( "plane", "I" ), ( "equation", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClipPlanef_3" (JR.thisField "gl11") [ (JR.local "plane"), (JR.local "equation"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClipPlanef_2 : JR.Method
jm_glClipPlanef_2 jheap jthis jargs =
    JR.method [ ( "plane", "I" ), ( "equation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClipPlanef_2" (JR.thisField "gl11") [ (JR.local "plane"), (JR.local "equation") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glColor4ub_4 : JR.Method
jm_glColor4ub_4 jheap jthis jargs =
    JR.method [ ( "red", "B" ), ( "green", "B" ), ( "blue", "B" ), ( "alpha", "B" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glColor4ub_4" (JR.thisField "gl11") [ (JR.local "red"), (JR.local "green"), (JR.local "blue"), (JR.local "alpha") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glColorPointer_4 : JR.Method
jm_glColorPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glColorPointer_4" (JR.thisField "gl11") [ (JR.local "size"), (JR.local "type"), (JR.local "stride"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDeleteBuffers_3 : JR.Method
jm_glDeleteBuffers_3 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "buffers", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDeleteBuffers_3" (JR.thisField "gl11") [ (JR.local "n"), (JR.local "buffers"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDeleteBuffers_2 : JR.Method
jm_glDeleteBuffers_2 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "buffers", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDeleteBuffers_2" (JR.thisField "gl11") [ (JR.local "n"), (JR.local "buffers") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDrawElements_4 : JR.Method
jm_glDrawElements_4 jheap jthis jargs =
    JR.method [ ( "mode", "I" ), ( "count", "I" ), ( "type", "I" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDrawElements_4" (JR.thisField "gl11") [ (JR.local "mode"), (JR.local "count"), (JR.local "type"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGenBuffers_3 : JR.Method
jm_glGenBuffers_3 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "buffers", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGenBuffers_3" (JR.thisField "gl11") [ (JR.local "n"), (JR.local "buffers"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGenBuffers_2 : JR.Method
jm_glGenBuffers_2 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "buffers", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGenBuffers_2" (JR.thisField "gl11") [ (JR.local "n"), (JR.local "buffers") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetBufferParameteriv_4 : JR.Method
jm_glGetBufferParameteriv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetBufferParameteriv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetBufferParameteriv_3 : JR.Method
jm_glGetBufferParameteriv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetBufferParameteriv_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetClipPlanef_3 : JR.Method
jm_glGetClipPlanef_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "eqn", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetClipPlanef_3" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "eqn"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetClipPlanef_2 : JR.Method
jm_glGetClipPlanef_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "eqn", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetClipPlanef_2" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "eqn") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetFloatv_3 : JR.Method
jm_glGetFloatv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetFloatv_3" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetFloatv_2 : JR.Method
jm_glGetFloatv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetFloatv_2" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetLightfv_4 : JR.Method
jm_glGetLightfv_4 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetLightfv_4" (JR.thisField "gl11") [ (JR.local "light"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetLightfv_3 : JR.Method
jm_glGetLightfv_3 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetLightfv_3" (JR.thisField "gl11") [ (JR.local "light"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetMaterialfv_4 : JR.Method
jm_glGetMaterialfv_4 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetMaterialfv_4" (JR.thisField "gl11") [ (JR.local "face"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetMaterialfv_3 : JR.Method
jm_glGetMaterialfv_3 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetMaterialfv_3" (JR.thisField "gl11") [ (JR.local "face"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetTexEnviv_4 : JR.Method
jm_glGetTexEnviv_4 jheap jthis jargs =
    JR.method [ ( "env", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetTexEnviv_4" (JR.thisField "gl11") [ (JR.local "env"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetTexEnviv_3 : JR.Method
jm_glGetTexEnviv_3 jheap jthis jargs =
    JR.method [ ( "env", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetTexEnviv_3" (JR.thisField "gl11") [ (JR.local "env"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetTexParameterfv_4 : JR.Method
jm_glGetTexParameterfv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetTexParameterfv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetTexParameterfv_3 : JR.Method
jm_glGetTexParameterfv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetTexParameterfv_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetTexParameteriv_4 : JR.Method
jm_glGetTexParameteriv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetTexParameteriv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetTexParameteriv_3 : JR.Method
jm_glGetTexParameteriv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetTexParameteriv_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glIsBuffer_1 : JR.Method
jm_glIsBuffer_1 jheap jthis jargs =
    JR.method [ ( "buffer", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "glIsBuffer_1" (JR.thisField "gl11") [ (JR.local "buffer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glIsEnabled_1 : JR.Method
jm_glIsEnabled_1 jheap jthis jargs =
    JR.method [ ( "cap", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "glIsEnabled_1" (JR.thisField "gl11") [ (JR.local "cap") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glIsTexture_1 : JR.Method
jm_glIsTexture_1 jheap jthis jargs =
    JR.method [ ( "texture", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "glIsTexture_1" (JR.thisField "gl11") [ (JR.local "texture") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glNormalPointer_3 : JR.Method
jm_glNormalPointer_3 jheap jthis jargs =
    JR.method [ ( "type", "I" ), ( "stride", "I" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glNormalPointer_3" (JR.thisField "gl11") [ (JR.local "type"), (JR.local "stride"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPointParameterf_2 : JR.Method
jm_glPointParameterf_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPointParameterf_2" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPointParameterfv_3 : JR.Method
jm_glPointParameterfv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPointParameterfv_3" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPointParameterfv_2 : JR.Method
jm_glPointParameterfv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPointParameterfv_2" (JR.thisField "gl11") [ (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexCoordPointer_4 : JR.Method
jm_glTexCoordPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexCoordPointer_4" (JR.thisField "gl11") [ (JR.local "size"), (JR.local "type"), (JR.local "stride"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvi_3 : JR.Method
jm_glTexEnvi_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexEnvi_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnviv_4 : JR.Method
jm_glTexEnviv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexEnviv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnviv_3 : JR.Method
jm_glTexEnviv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexEnviv_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameterfv_4 : JR.Method
jm_glTexParameterfv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameterfv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameterfv_3 : JR.Method
jm_glTexParameterfv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameterfv_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameteri_3 : JR.Method
jm_glTexParameteri_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameteri_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameteriv_4 : JR.Method
jm_glTexParameteriv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameteriv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameteriv_3 : JR.Method
jm_glTexParameteriv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameteriv_3" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameterxv_4 : JR.Method
jm_glTexParameterxv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameteriv_4" (JR.thisField "gl11") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glVertexPointer_4 : JR.Method
jm_glVertexPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glVertexPointer_4" (JR.thisField "gl11") [ (JR.local "size"), (JR.local "type"), (JR.local "stride"), (JR.local "offset") ]) ])
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

