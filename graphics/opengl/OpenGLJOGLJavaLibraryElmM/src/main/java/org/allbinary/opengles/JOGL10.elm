module Org.Allbinary.Opengles.JOGL10 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.opengles
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL10 as GL10


jclass : String
jclass =
    "JOGL10"


jchain : List String
jchain =
    [ "JOGL10" ]
        ++ GL10.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "RED", JR.defaultOf "" ), ( "GREEN", JR.defaultOf "" ), ( "BLUE", JR.defaultOf "" ), ( "ALPHA", JR.defaultOf "" ), ( "PNAME", JR.defaultOf "" ), ( "_PNAME", JR.defaultOf "" ), ( "PARAM", JR.defaultOf "" ), ( "PARAMS", JR.defaultOf "" ), ( "LIGHT", JR.defaultOf "" ), ( "FACE", JR.defaultOf "" ), ( "TARGET", JR.defaultOf "" ), ( "gl10", JR.defaultOf "" ), ( "glu", JR.defaultOf "" ), ( "GL_LINE", JR.defaultOf "I" ), ( "GL_QUAD_STRIP", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getJOGLGL_0", jm_getJOGLGL_0 )
        , ( "glActiveTexture_1", jm_glActiveTexture_1 )
        , ( "glAlphaFunc_2", jm_glAlphaFunc_2 )
        , ( "glBindTexture_2", jm_glBindTexture_2 )
        , ( "glBlendFunc_2", jm_glBlendFunc_2 )
        , ( "glClear_1", jm_glClear_1 )
        , ( "glClearColor_4", jm_glClearColor_4 )
        , ( "glClearDepthf_1", jm_glClearDepthf_1 )
        , ( "glClearStencil_1", jm_glClearStencil_1 )
        , ( "glClientActiveTexture_1", jm_glClientActiveTexture_1 )
        , ( "glColor4f_4", jm_glColor4f_4 )
        , ( "glColorMask_4", jm_glColorMask_4 )
        , ( "glColorPointer_4", jm_glColorPointer_4 )
        , ( "glCompressedTexImage2D_8", jm_glCompressedTexImage2D_8 )
        , ( "glCompressedTexSubImage2D_9", jm_glCompressedTexSubImage2D_9 )
        , ( "glCopyTexImage2D_8", jm_glCopyTexImage2D_8 )
        , ( "glCopyTexSubImage2D_8", jm_glCopyTexSubImage2D_8 )
        , ( "glCullFace_1", jm_glCullFace_1 )
        , ( "glDeleteTextures_3", jm_glDeleteTextures_3 )
        , ( "glDeleteTextures_2", jm_glDeleteTextures_2 )
        , ( "glDepthFunc_1", jm_glDepthFunc_1 )
        , ( "glDepthMask_1", jm_glDepthMask_1 )
        , ( "glDepthRangef_2", jm_glDepthRangef_2 )
        , ( "glDisable_1", jm_glDisable_1 )
        , ( "glDisableClientState_1", jm_glDisableClientState_1 )
        , ( "glDrawArrays_3", jm_glDrawArrays_3 )
        , ( "glDrawElements_4", jm_glDrawElements_4 )
        , ( "glEnable_1", jm_glEnable_1 )
        , ( "glEnableClientState_1", jm_glEnableClientState_1 )
        , ( "glFinish_0", jm_glFinish_0 )
        , ( "glFlush_0", jm_glFlush_0 )
        , ( "glFogf_2", jm_glFogf_2 )
        , ( "glFogfv_3", jm_glFogfv_3 )
        , ( "glFogfv_2", jm_glFogfv_2 )
        , ( "glFrontFace_1", jm_glFrontFace_1 )
        , ( "glFrustumf_6", jm_glFrustumf_6 )
        , ( "glGenTextures_3", jm_glGenTextures_3 )
        , ( "glGenTextures_2", jm_glGenTextures_2 )
        , ( "glGetError_0", jm_glGetError_0 )
        , ( "glGetIntegerv_3", jm_glGetIntegerv_3 )
        , ( "glGetIntegerv_2", jm_glGetIntegerv_2 )
        , ( "glGetString_1", jm_glGetString_1 )
        , ( "glHint_2", jm_glHint_2 )
        , ( "glLightModelf_2", jm_glLightModelf_2 )
        , ( "glLightModelfv_3", jm_glLightModelfv_3 )
        , ( "glLightModelfv_2", jm_glLightModelfv_2 )
        , ( "glLightf_3", jm_glLightf_3 )
        , ( "glLightfv_4", jm_glLightfv_4 )
        , ( "glLightfv_3", jm_glLightfv_3 )
        , ( "glLineWidth_1", jm_glLineWidth_1 )
        , ( "glLoadIdentity_0", jm_glLoadIdentity_0 )
        , ( "glLoadMatrixf_2", jm_glLoadMatrixf_2 )
        , ( "glLoadMatrixf_1", jm_glLoadMatrixf_1 )
        , ( "glLogicOp_1", jm_glLogicOp_1 )
        , ( "glMaterialf_3", jm_glMaterialf_3 )
        , ( "glMaterialfv_4", jm_glMaterialfv_4 )
        , ( "glMaterialfv_3", jm_glMaterialfv_3 )
        , ( "glMatrixMode_1", jm_glMatrixMode_1 )
        , ( "glMultMatrixf_2", jm_glMultMatrixf_2 )
        , ( "glMultMatrixf_1", jm_glMultMatrixf_1 )
        , ( "glMultiTexCoord4f_5", jm_glMultiTexCoord4f_5 )
        , ( "glNormal3f_3", jm_glNormal3f_3 )
        , ( "glNormalPointer_3", jm_glNormalPointer_3 )
        , ( "glOrthof_6", jm_glOrthof_6 )
        , ( "glPixelStorei_2", jm_glPixelStorei_2 )
        , ( "glPointSize_1", jm_glPointSize_1 )
        , ( "glPolygonOffset_2", jm_glPolygonOffset_2 )
        , ( "glPopMatrix_0", jm_glPopMatrix_0 )
        , ( "glPushMatrix_0", jm_glPushMatrix_0 )
        , ( "glReadPixels_7", jm_glReadPixels_7 )
        , ( "glRotatef_4", jm_glRotatef_4 )
        , ( "glRotatex_4", jm_glRotatex_4 )
        , ( "glSampleCoverage_2", jm_glSampleCoverage_2 )
        , ( "glScalef_3", jm_glScalef_3 )
        , ( "glScalex_3", jm_glScalex_3 )
        , ( "glScissor_4", jm_glScissor_4 )
        , ( "glShadeModel_1", jm_glShadeModel_1 )
        , ( "glStencilFunc_3", jm_glStencilFunc_3 )
        , ( "glStencilMask_1", jm_glStencilMask_1 )
        , ( "glStencilOp_3", jm_glStencilOp_3 )
        , ( "glTexCoordPointer_4", jm_glTexCoordPointer_4 )
        , ( "glTexEnvf_3", jm_glTexEnvf_3 )
        , ( "glTexEnvfv_4", jm_glTexEnvfv_4 )
        , ( "glTexEnvfv_3", jm_glTexEnvfv_3 )
        , ( "glTexImage2D_9", jm_glTexImage2D_9 )
        , ( "glTexParameterf_3", jm_glTexParameterf_3 )
        , ( "glTexParameteri_3", jm_glTexParameteri_3 )
        , ( "glTexSubImage2D_9", jm_glTexSubImage2D_9 )
        , ( "glTranslatef_3", jm_glTranslatef_3 )
        , ( "glVertexPointer_4", jm_glVertexPointer_4 )
        , ( "glViewport_4", jm_glViewport_4 )
        , ( "glBegin_1", jm_glBegin_1 )
        , ( "glEnd_0", jm_glEnd_0 )
        , ( "glVertex3f_3", jm_glVertex3f_3 )
        , ( "glPolygonMode_2", jm_glPolygonMode_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "JOGL10"
        [ ( "jm_getJOGLGL_0", jm_getJOGLGL_0 ), ( "jm_glActiveTexture_1", jm_glActiveTexture_1 ), ( "jm_glAlphaFunc_2", jm_glAlphaFunc_2 ), ( "jm_glBindTexture_2", jm_glBindTexture_2 ), ( "jm_glBlendFunc_2", jm_glBlendFunc_2 ), ( "jm_glClear_1", jm_glClear_1 ), ( "jm_glClearColor_4", jm_glClearColor_4 ), ( "jm_glClearDepthf_1", jm_glClearDepthf_1 ), ( "jm_glClearStencil_1", jm_glClearStencil_1 ), ( "jm_glClientActiveTexture_1", jm_glClientActiveTexture_1 ), ( "jm_glColor4f_4", jm_glColor4f_4 ), ( "jm_glColorMask_4", jm_glColorMask_4 ), ( "jm_glColorPointer_4", jm_glColorPointer_4 ), ( "jm_glCompressedTexImage2D_8", jm_glCompressedTexImage2D_8 ), ( "jm_glCompressedTexSubImage2D_9", jm_glCompressedTexSubImage2D_9 ), ( "jm_glCopyTexImage2D_8", jm_glCopyTexImage2D_8 ), ( "jm_glCopyTexSubImage2D_8", jm_glCopyTexSubImage2D_8 ), ( "jm_glCullFace_1", jm_glCullFace_1 ), ( "jm_glDeleteTextures_3", jm_glDeleteTextures_3 ), ( "jm_glDeleteTextures_2", jm_glDeleteTextures_2 ), ( "jm_glDepthFunc_1", jm_glDepthFunc_1 ), ( "jm_glDepthMask_1", jm_glDepthMask_1 ), ( "jm_glDepthRangef_2", jm_glDepthRangef_2 ), ( "jm_glDisable_1", jm_glDisable_1 ), ( "jm_glDisableClientState_1", jm_glDisableClientState_1 ), ( "jm_glDrawArrays_3", jm_glDrawArrays_3 ), ( "jm_glDrawElements_4", jm_glDrawElements_4 ), ( "jm_glEnable_1", jm_glEnable_1 ), ( "jm_glEnableClientState_1", jm_glEnableClientState_1 ), ( "jm_glFinish_0", jm_glFinish_0 ), ( "jm_glFlush_0", jm_glFlush_0 ), ( "jm_glFogf_2", jm_glFogf_2 ), ( "jm_glFogfv_3", jm_glFogfv_3 ), ( "jm_glFogfv_2", jm_glFogfv_2 ), ( "jm_glFrontFace_1", jm_glFrontFace_1 ), ( "jm_glFrustumf_6", jm_glFrustumf_6 ), ( "jm_glGenTextures_3", jm_glGenTextures_3 ), ( "jm_glGenTextures_2", jm_glGenTextures_2 ), ( "jm_glGetError_0", jm_glGetError_0 ), ( "jm_glGetIntegerv_3", jm_glGetIntegerv_3 ), ( "jm_glGetIntegerv_2", jm_glGetIntegerv_2 ), ( "jm_glGetString_1", jm_glGetString_1 ), ( "jm_glHint_2", jm_glHint_2 ), ( "jm_glLightModelf_2", jm_glLightModelf_2 ), ( "jm_glLightModelfv_3", jm_glLightModelfv_3 ), ( "jm_glLightModelfv_2", jm_glLightModelfv_2 ), ( "jm_glLightf_3", jm_glLightf_3 ), ( "jm_glLightfv_4", jm_glLightfv_4 ), ( "jm_glLightfv_3", jm_glLightfv_3 ), ( "jm_glLineWidth_1", jm_glLineWidth_1 ), ( "jm_glLoadIdentity_0", jm_glLoadIdentity_0 ), ( "jm_glLoadMatrixf_2", jm_glLoadMatrixf_2 ), ( "jm_glLoadMatrixf_1", jm_glLoadMatrixf_1 ), ( "jm_glLogicOp_1", jm_glLogicOp_1 ), ( "jm_glMaterialf_3", jm_glMaterialf_3 ), ( "jm_glMaterialfv_4", jm_glMaterialfv_4 ), ( "jm_glMaterialfv_3", jm_glMaterialfv_3 ), ( "jm_glMatrixMode_1", jm_glMatrixMode_1 ), ( "jm_glMultMatrixf_2", jm_glMultMatrixf_2 ), ( "jm_glMultMatrixf_1", jm_glMultMatrixf_1 ), ( "jm_glMultiTexCoord4f_5", jm_glMultiTexCoord4f_5 ), ( "jm_glNormal3f_3", jm_glNormal3f_3 ), ( "jm_glNormalPointer_3", jm_glNormalPointer_3 ), ( "jm_glOrthof_6", jm_glOrthof_6 ), ( "jm_glPixelStorei_2", jm_glPixelStorei_2 ), ( "jm_glPointSize_1", jm_glPointSize_1 ), ( "jm_glPolygonOffset_2", jm_glPolygonOffset_2 ), ( "jm_glPopMatrix_0", jm_glPopMatrix_0 ), ( "jm_glPushMatrix_0", jm_glPushMatrix_0 ), ( "jm_glReadPixels_7", jm_glReadPixels_7 ), ( "jm_glRotatef_4", jm_glRotatef_4 ), ( "jm_glRotatex_4", jm_glRotatex_4 ), ( "jm_glSampleCoverage_2", jm_glSampleCoverage_2 ), ( "jm_glScalef_3", jm_glScalef_3 ), ( "jm_glScalex_3", jm_glScalex_3 ), ( "jm_glScissor_4", jm_glScissor_4 ), ( "jm_glShadeModel_1", jm_glShadeModel_1 ), ( "jm_glStencilFunc_3", jm_glStencilFunc_3 ), ( "jm_glStencilMask_1", jm_glStencilMask_1 ), ( "jm_glStencilOp_3", jm_glStencilOp_3 ), ( "jm_glTexCoordPointer_4", jm_glTexCoordPointer_4 ), ( "jm_glTexEnvf_3", jm_glTexEnvf_3 ), ( "jm_glTexEnvfv_4", jm_glTexEnvfv_4 ), ( "jm_glTexEnvfv_3", jm_glTexEnvfv_3 ), ( "jm_glTexImage2D_9", jm_glTexImage2D_9 ), ( "jm_glTexParameterf_3", jm_glTexParameterf_3 ), ( "jm_glTexParameteri_3", jm_glTexParameteri_3 ), ( "jm_glTexSubImage2D_9", jm_glTexSubImage2D_9 ), ( "jm_glTranslatef_3", jm_glTranslatef_3 ), ( "jm_glVertexPointer_4", jm_glVertexPointer_4 ), ( "jm_glViewport_4", jm_glViewport_4 ), ( "jm_glBegin_1", jm_glBegin_1 ), ( "jm_glEnd_0", jm_glEnd_0 ), ( "jm_glVertex3f_3", jm_glVertex3f_3 ), ( "jm_glPolygonMode_2", jm_glPolygonMode_2 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "gl2", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "RED" "" JR.this (JR.str "red: ")),
                JR.exec (JR.setField "GREEN" "" JR.this (JR.str " green: ")),
                JR.exec (JR.setField "BLUE" "" JR.this (JR.str " blue: ")),
                JR.exec (JR.setField "ALPHA" "" JR.this (JR.str " alpha: ")),
                JR.exec (JR.setField "PNAME" "" JR.this (JR.str "pname: ")),
                JR.exec (JR.setField "_PNAME" "" JR.this (JR.str " pname: ")),
                JR.exec (JR.setField "PARAM" "" JR.this (JR.str " param: ")),
                JR.exec (JR.setField "PARAMS" "" JR.this (JR.str " params: ")),
                JR.exec (JR.setField "LIGHT" "" JR.this (JR.str "light: ")),
                JR.exec (JR.setField "FACE" "" JR.this (JR.str "face: ")),
                JR.exec (JR.setField "TARGET" "" JR.this (JR.str "target: ")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gl10" "" JR.this (JR.local "gl2")), 
                    JR.exec (JR.setField "glu" "" JR.this (JR.callStatic (JR.namedMethod "GLU.jm_createGLU_1") [ (JR.thisField "gl10") ])), 
                    JR.exec (JR.setField "GL_LINE" "I" JR.this (JR.namedStatic "GL2.jstatic_GL_LINE")), 
                    JR.exec (JR.setField "GL_QUAD_STRIP" "I" JR.this (JR.namedStatic "GL2.jstatic_GL_QUAD_STRIP")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getJOGLGL_0 : JR.Method
jm_getJOGLGL_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gl10") ])
        (jregister jheap)
        jthis
        jargs


jm_glActiveTexture_1 : JR.Method
jm_glActiveTexture_1 jheap jthis jargs =
    JR.method [ ( "texture", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glActiveTexture_1" (JR.thisField "gl10") [ (JR.local "texture") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glAlphaFunc_2 : JR.Method
jm_glAlphaFunc_2 jheap jthis jargs =
    JR.method [ ( "func", "I" ), ( "ref", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glAlphaFunc_2" (JR.thisField "gl10") [ (JR.local "func"), (JR.local "ref") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glBindTexture_2 : JR.Method
jm_glBindTexture_2 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "texture", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glBindTexture_2" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "texture") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glBlendFunc_2 : JR.Method
jm_glBlendFunc_2 jheap jthis jargs =
    JR.method [ ( "sfactor", "I" ), ( "dfactor", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glBlendFunc_2" (JR.thisField "gl10") [ (JR.local "sfactor"), (JR.local "dfactor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClear_1 : JR.Method
jm_glClear_1 jheap jthis jargs =
    JR.method [ ( "mask", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClear_1" (JR.thisField "gl10") [ (JR.local "mask") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClearColor_4 : JR.Method
jm_glClearColor_4 jheap jthis jargs =
    JR.method [ ( "red", "F" ), ( "green", "F" ), ( "blue", "F" ), ( "alpha", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClearColor_4" (JR.thisField "gl10") [ (JR.local "red"), (JR.local "green"), (JR.local "blue"), (JR.local "alpha") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClearDepthf_1 : JR.Method
jm_glClearDepthf_1 jheap jthis jargs =
    JR.method [ ( "depth", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClearDepthf_1" (JR.thisField "gl10") [ (JR.local "depth") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClearStencil_1 : JR.Method
jm_glClearStencil_1 jheap jthis jargs =
    JR.method [ ( "s", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClearStencil_1" (JR.thisField "gl10") [ (JR.local "s") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glClientActiveTexture_1 : JR.Method
jm_glClientActiveTexture_1 jheap jthis jargs =
    JR.method [ ( "texture", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glClientActiveTexture_1" (JR.thisField "gl10") [ (JR.local "texture") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glColor4f_4 : JR.Method
jm_glColor4f_4 jheap jthis jargs =
    JR.method [ ( "red", "F" ), ( "green", "F" ), ( "blue", "F" ), ( "alpha", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glColor4f_4" (JR.thisField "gl10") [ (JR.local "red"), (JR.local "green"), (JR.local "blue"), (JR.local "alpha") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glColorMask_4 : JR.Method
jm_glColorMask_4 jheap jthis jargs =
    JR.method [ ( "red", "Z" ), ( "green", "Z" ), ( "blue", "Z" ), ( "alpha", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glColorMask_4" (JR.thisField "gl10") [ (JR.local "red"), (JR.local "green"), (JR.local "blue"), (JR.local "alpha") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glColorPointer_4 : JR.Method
jm_glColorPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glColorPointer_4" (JR.thisField "gl10") [ (JR.local "size"), (JR.local "type"), (JR.local "stride"), (JR.local "pointer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glCompressedTexImage2D_8 : JR.Method
jm_glCompressedTexImage2D_8 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "internalformat", "I" ), ( "width", "I" ), ( "height", "I" ), ( "border", "I" ), ( "imageSize", "I" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glCompressedTexImage2D_8" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "level"), (JR.local "internalformat"), (JR.local "width"), (JR.local "height"), (JR.local "border"), (JR.local "imageSize"), (JR.local "data") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glCompressedTexSubImage2D_9 : JR.Method
jm_glCompressedTexSubImage2D_9 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "xoffset", "I" ), ( "yoffset", "I" ), ( "width", "I" ), ( "height", "I" ), ( "format", "I" ), ( "imageSize", "I" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glCompressedTexSubImage2D_9" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "level"), (JR.local "xoffset"), (JR.local "yoffset"), (JR.local "width"), (JR.local "height"), (JR.local "format"), (JR.local "imageSize"), (JR.local "data") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glCopyTexImage2D_8 : JR.Method
jm_glCopyTexImage2D_8 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "internalformat", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ), ( "border", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glCopyTexImage2D_8" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "level"), (JR.local "internalformat"), (JR.local "x"), (JR.local "y"), (JR.local "width"), (JR.local "height"), (JR.local "border") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glCopyTexSubImage2D_8 : JR.Method
jm_glCopyTexSubImage2D_8 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "xoffset", "I" ), ( "yoffset", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glCopyTexSubImage2D_8" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "level"), (JR.local "xoffset"), (JR.local "yoffset"), (JR.local "x"), (JR.local "y"), (JR.local "width"), (JR.local "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glCullFace_1 : JR.Method
jm_glCullFace_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glCullFace_1" (JR.thisField "gl10") [ (JR.local "mode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDeleteTextures_3 : JR.Method
jm_glDeleteTextures_3 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDeleteTextures_3" (JR.thisField "gl10") [ (JR.local "n"), (JR.local "textures"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDeleteTextures_2 : JR.Method
jm_glDeleteTextures_2 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDeleteTextures_2" (JR.thisField "gl10") [ (JR.local "n"), (JR.local "textures") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDepthFunc_1 : JR.Method
jm_glDepthFunc_1 jheap jthis jargs =
    JR.method [ ( "func", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDepthFunc_1" (JR.thisField "gl10") [ (JR.local "func") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDepthMask_1 : JR.Method
jm_glDepthMask_1 jheap jthis jargs =
    JR.method [ ( "flag", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDepthMask_1" (JR.thisField "gl10") [ (JR.local "flag") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDepthRangef_2 : JR.Method
jm_glDepthRangef_2 jheap jthis jargs =
    JR.method [ ( "zNear", "F" ), ( "zFar", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDepthRangef_2" (JR.thisField "gl10") [ (JR.local "zNear"), (JR.local "zFar") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDisable_1 : JR.Method
jm_glDisable_1 jheap jthis jargs =
    JR.method [ ( "cap", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDisable_1" (JR.thisField "gl10") [ (JR.local "cap") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDisableClientState_1 : JR.Method
jm_glDisableClientState_1 jheap jthis jargs =
    JR.method [ ( "array", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDisableClientState_1" (JR.thisField "gl10") [ (JR.local "array") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDrawArrays_3 : JR.Method
jm_glDrawArrays_3 jheap jthis jargs =
    JR.method [ ( "mode", "I" ), ( "first", "I" ), ( "count", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDrawArrays_3" (JR.thisField "gl10") [ (JR.local "mode"), (JR.local "first"), (JR.local "count") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glDrawElements_4 : JR.Method
jm_glDrawElements_4 jheap jthis jargs =
    JR.method [ ( "mode", "I" ), ( "count", "I" ), ( "type", "I" ), ( "indices", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glDrawElements_4" (JR.thisField "gl10") [ (JR.local "mode"), (JR.local "count"), (JR.local "type"), (JR.local "indices") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glEnable_1 : JR.Method
jm_glEnable_1 jheap jthis jargs =
    JR.method [ ( "cap", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glEnable_1" (JR.thisField "gl10") [ (JR.local "cap") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glEnableClientState_1 : JR.Method
jm_glEnableClientState_1 jheap jthis jargs =
    JR.method [ ( "array", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glEnableClientState_1" (JR.thisField "gl10") [ (JR.local "array") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glFinish_0 : JR.Method
jm_glFinish_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFinish_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glFlush_0 : JR.Method
jm_glFlush_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFlush_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glFogf_2 : JR.Method
jm_glFogf_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFogf_2" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glFogfv_3 : JR.Method
jm_glFogfv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFogfv_3" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glFogfv_2 : JR.Method
jm_glFogfv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFogfv_2" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glFrontFace_1 : JR.Method
jm_glFrontFace_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFrontFace_1" (JR.thisField "gl10") [ (JR.local "mode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glFrustumf_6 : JR.Method
jm_glFrustumf_6 jheap jthis jargs =
    JR.method [ ( "left", "F" ), ( "right", "F" ), ( "bottom", "F" ), ( "top", "F" ), ( "zNear", "F" ), ( "zFar", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glFrustumf_6" (JR.thisField "gl10") [ (JR.local "left"), (JR.local "right"), (JR.local "bottom"), (JR.local "top"), (JR.local "zNear"), (JR.local "zFar") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGenTextures_3 : JR.Method
jm_glGenTextures_3 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGenTextures_3" (JR.thisField "gl10") [ (JR.local "n"), (JR.local "textures"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGenTextures_2 : JR.Method
jm_glGenTextures_2 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGenTextures_2" (JR.thisField "gl10") [ (JR.local "n"), (JR.local "textures") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetError_0 : JR.Method
jm_glGetError_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "glGetError_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetIntegerv_3 : JR.Method
jm_glGetIntegerv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetIntegerv_3" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetIntegerv_2 : JR.Method
jm_glGetIntegerv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glGetIntegerv_2" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetString_1 : JR.Method
jm_glGetString_1 jheap jthis jargs =
    JR.method [ ( "name", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "glGetString_1" (JR.thisField "gl10") [ (JR.local "name") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glHint_2 : JR.Method
jm_glHint_2 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glHint_2" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "mode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLightModelf_2 : JR.Method
jm_glLightModelf_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLightModelf_2" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLightModelfv_3 : JR.Method
jm_glLightModelfv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLightModelfv_3" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLightModelfv_2 : JR.Method
jm_glLightModelfv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLightModelfv_2" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLightf_3 : JR.Method
jm_glLightf_3 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLightf_3" (JR.thisField "gl10") [ (JR.local "light"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLightfv_4 : JR.Method
jm_glLightfv_4 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLightfv_4" (JR.thisField "gl10") [ (JR.local "light"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLightfv_3 : JR.Method
jm_glLightfv_3 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLightfv_3" (JR.thisField "gl10") [ (JR.local "light"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLineWidth_1 : JR.Method
jm_glLineWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLineWidth_1" (JR.thisField "gl10") [ (JR.local "width") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLoadIdentity_0 : JR.Method
jm_glLoadIdentity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLoadIdentity_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glLoadMatrixf_2 : JR.Method
jm_glLoadMatrixf_2 jheap jthis jargs =
    JR.method [ ( "m", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLoadMatrixf_2" (JR.thisField "gl10") [ (JR.local "m"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLoadMatrixf_1 : JR.Method
jm_glLoadMatrixf_1 jheap jthis jargs =
    JR.method [ ( "m", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLoadMatrixf_1" (JR.thisField "gl10") [ (JR.local "m") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glLogicOp_1 : JR.Method
jm_glLogicOp_1 jheap jthis jargs =
    JR.method [ ( "opcode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glLogicOp_1" (JR.thisField "gl10") [ (JR.local "opcode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMaterialf_3 : JR.Method
jm_glMaterialf_3 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMaterialf_3" (JR.thisField "gl10") [ (JR.local "face"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMaterialfv_4 : JR.Method
jm_glMaterialfv_4 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMaterialfv_4" (JR.thisField "gl10") [ (JR.local "face"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMaterialfv_3 : JR.Method
jm_glMaterialfv_3 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMaterialfv_3" (JR.thisField "gl10") [ (JR.local "face"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMatrixMode_1 : JR.Method
jm_glMatrixMode_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMatrixMode_1" (JR.thisField "gl10") [ (JR.local "mode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMultMatrixf_2 : JR.Method
jm_glMultMatrixf_2 jheap jthis jargs =
    JR.method [ ( "m", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMultMatrixf_2" (JR.thisField "gl10") [ (JR.local "m"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMultMatrixf_1 : JR.Method
jm_glMultMatrixf_1 jheap jthis jargs =
    JR.method [ ( "m", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMultMatrixf_1" (JR.thisField "gl10") [ (JR.local "m") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glMultiTexCoord4f_5 : JR.Method
jm_glMultiTexCoord4f_5 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "s", "F" ), ( "t", "F" ), ( "r", "F" ), ( "q", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glMultiTexCoord4f_5" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "s"), (JR.local "t"), (JR.local "r"), (JR.local "q") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glNormal3f_3 : JR.Method
jm_glNormal3f_3 jheap jthis jargs =
    JR.method [ ( "nx", "F" ), ( "ny", "F" ), ( "nz", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glNormal3f_3" (JR.thisField "gl10") [ (JR.local "nx"), (JR.local "ny"), (JR.local "nz") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glNormalPointer_3 : JR.Method
jm_glNormalPointer_3 jheap jthis jargs =
    JR.method [ ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glNormalPointer_3" (JR.thisField "gl10") [ (JR.local "type"), (JR.local "stride"), (JR.local "pointer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glOrthof_6 : JR.Method
jm_glOrthof_6 jheap jthis jargs =
    JR.method [ ( "left", "F" ), ( "right", "F" ), ( "bottom", "F" ), ( "top", "F" ), ( "zNear", "F" ), ( "zFar", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glOrthof_6" (JR.thisField "gl10") [ (JR.local "left"), (JR.local "right"), (JR.local "bottom"), (JR.local "top"), (JR.local "zNear"), (JR.local "zFar") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPixelStorei_2 : JR.Method
jm_glPixelStorei_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPixelStorei_2" (JR.thisField "gl10") [ (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPointSize_1 : JR.Method
jm_glPointSize_1 jheap jthis jargs =
    JR.method [ ( "size", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPointSize_1" (JR.thisField "gl10") [ (JR.local "size") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPolygonOffset_2 : JR.Method
jm_glPolygonOffset_2 jheap jthis jargs =
    JR.method [ ( "factor", "F" ), ( "units", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPolygonOffset_2" (JR.thisField "gl10") [ (JR.local "factor"), (JR.local "units") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPopMatrix_0 : JR.Method
jm_glPopMatrix_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPopMatrix_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glPushMatrix_0 : JR.Method
jm_glPushMatrix_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPushMatrix_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glReadPixels_7 : JR.Method
jm_glReadPixels_7 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ), ( "format", "I" ), ( "type", "I" ), ( "pixels", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glReadPixels_7" (JR.thisField "gl10") [ (JR.local "x"), (JR.local "y"), (JR.local "width"), (JR.local "height"), (JR.local "format"), (JR.local "type"), (JR.local "pixels") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glRotatef_4 : JR.Method
jm_glRotatef_4 jheap jthis jargs =
    JR.method [ ( "angle", "F" ), ( "x", "F" ), ( "y", "F" ), ( "z", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glRotatef_4" (JR.thisField "gl10") [ (JR.local "angle"), (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glRotatex_4 : JR.Method
jm_glRotatex_4 jheap jthis jargs =
    JR.method [ ( "angle", "I" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glRotatef_4" (JR.thisField "gl10") [ (JR.local "angle"), (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glSampleCoverage_2 : JR.Method
jm_glSampleCoverage_2 jheap jthis jargs =
    JR.method [ ( "value", "F" ), ( "invert", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glSampleCoverage_2" (JR.thisField "gl10") [ (JR.local "value"), (JR.local "invert") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glScalef_3 : JR.Method
jm_glScalef_3 jheap jthis jargs =
    JR.method [ ( "x", "F" ), ( "y", "F" ), ( "z", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glScalef_3" (JR.thisField "gl10") [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glScalex_3 : JR.Method
jm_glScalex_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glScalef_3" (JR.thisField "gl10") [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glScissor_4 : JR.Method
jm_glScissor_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glScissor_4" (JR.thisField "gl10") [ (JR.local "x"), (JR.local "y"), (JR.local "width"), (JR.local "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glShadeModel_1 : JR.Method
jm_glShadeModel_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glShadeModel_1" (JR.thisField "gl10") [ (JR.local "mode") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glStencilFunc_3 : JR.Method
jm_glStencilFunc_3 jheap jthis jargs =
    JR.method [ ( "func", "I" ), ( "ref", "I" ), ( "mask", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glStencilFunc_3" (JR.thisField "gl10") [ (JR.local "func"), (JR.local "ref"), (JR.local "mask") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glStencilMask_1 : JR.Method
jm_glStencilMask_1 jheap jthis jargs =
    JR.method [ ( "mask", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glStencilMask_1" (JR.thisField "gl10") [ (JR.local "mask") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glStencilOp_3 : JR.Method
jm_glStencilOp_3 jheap jthis jargs =
    JR.method [ ( "fail", "I" ), ( "zfail", "I" ), ( "zpass", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glStencilOp_3" (JR.thisField "gl10") [ (JR.local "fail"), (JR.local "zfail"), (JR.local "zpass") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexCoordPointer_4 : JR.Method
jm_glTexCoordPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexCoordPointer_4" (JR.thisField "gl10") [ (JR.local "size"), (JR.local "type"), (JR.local "stride"), (JR.local "pointer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvf_3 : JR.Method
jm_glTexEnvf_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexEnvf_3" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvfv_4 : JR.Method
jm_glTexEnvfv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexEnvfv_4" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "pname"), (JR.local "params"), (JR.local "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvfv_3 : JR.Method
jm_glTexEnvfv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexEnvfv_3" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "pname"), (JR.local "params") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexImage2D_9 : JR.Method
jm_glTexImage2D_9 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "internalformat", "I" ), ( "width", "I" ), ( "height", "I" ), ( "border", "I" ), ( "format", "I" ), ( "type", "I" ), ( "pixels", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexImage2D_9" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "level"), (JR.local "internalformat"), (JR.local "width"), (JR.local "height"), (JR.local "border"), (JR.local "format"), (JR.local "type"), (JR.local "pixels") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameterf_3 : JR.Method
jm_glTexParameterf_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameterf_3" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameteri_3 : JR.Method
jm_glTexParameteri_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexParameteri_3" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "pname"), (JR.local "param") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTexSubImage2D_9 : JR.Method
jm_glTexSubImage2D_9 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "xoffset", "I" ), ( "yoffset", "I" ), ( "width", "I" ), ( "height", "I" ), ( "format", "I" ), ( "type", "I" ), ( "pixels", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTexSubImage2D_9" (JR.thisField "gl10") [ (JR.local "target"), (JR.local "level"), (JR.local "xoffset"), (JR.local "yoffset"), (JR.local "width"), (JR.local "height"), (JR.local "format"), (JR.local "type"), (JR.local "pixels") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glTranslatef_3 : JR.Method
jm_glTranslatef_3 jheap jthis jargs =
    JR.method [ ( "x", "F" ), ( "y", "F" ), ( "z", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glTranslatef_3" (JR.thisField "gl10") [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glVertexPointer_4 : JR.Method
jm_glVertexPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glVertexPointer_4" (JR.thisField "gl10") [ (JR.local "size"), (JR.local "type"), (JR.local "stride"), (JR.local "pointer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glViewport_4 : JR.Method
jm_glViewport_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glViewport_4" (JR.thisField "gl10") [ (JR.local "x"), (JR.local "y"), (JR.local "width"), (JR.local "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glBegin_1 : JR.Method
jm_glBegin_1 jheap jthis jargs =
    JR.method [ ( "i", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glBegin_1" (JR.thisField "gl10") [ (JR.local "i") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glEnd_0 : JR.Method
jm_glEnd_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glEnd_0" (JR.thisField "gl10") []) ])
        (jregister jheap)
        jthis
        jargs


jm_glVertex3f_3 : JR.Method
jm_glVertex3f_3 jheap jthis jargs =
    JR.method [ ( "f", "F" ), ( "f2", "F" ), ( "f3", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glVertex3f_3" (JR.thisField "gl10") [ (JR.local "f"), (JR.local "f2"), (JR.local "f3") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_glPolygonMode_2 : JR.Method
jm_glPolygonMode_2 jheap jthis jargs =
    JR.method [ ( "i", "I" ), ( "i1", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "glPolygonMode_2" (JR.thisField "gl10") [ (JR.local "i"), (JR.local "i1") ]) ])
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

