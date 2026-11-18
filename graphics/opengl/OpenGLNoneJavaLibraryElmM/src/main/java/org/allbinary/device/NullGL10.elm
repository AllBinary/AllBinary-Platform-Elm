module Org.Allbinary.Device.NullGL10 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.device
-}

import JR
import Javax.Microedition.Khronos.Opengles.GL10 as GL10
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NullGL10"


jchain : List String
jchain =
    [ "NullGL10" ]
        ++ GL10.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "glActiveTexture_1", jm_glActiveTexture_1 )
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
    JR.register "NullGL10"
        [ ( "jm_glActiveTexture_1", jm_glActiveTexture_1 ), ( "jm_glAlphaFunc_2", jm_glAlphaFunc_2 ), ( "jm_glBindTexture_2", jm_glBindTexture_2 ), ( "jm_glBlendFunc_2", jm_glBlendFunc_2 ), ( "jm_glClear_1", jm_glClear_1 ), ( "jm_glClearColor_4", jm_glClearColor_4 ), ( "jm_glClearDepthf_1", jm_glClearDepthf_1 ), ( "jm_glClearStencil_1", jm_glClearStencil_1 ), ( "jm_glClientActiveTexture_1", jm_glClientActiveTexture_1 ), ( "jm_glColor4f_4", jm_glColor4f_4 ), ( "jm_glColorMask_4", jm_glColorMask_4 ), ( "jm_glColorPointer_4", jm_glColorPointer_4 ), ( "jm_glCompressedTexImage2D_8", jm_glCompressedTexImage2D_8 ), ( "jm_glCompressedTexSubImage2D_9", jm_glCompressedTexSubImage2D_9 ), ( "jm_glCopyTexImage2D_8", jm_glCopyTexImage2D_8 ), ( "jm_glCopyTexSubImage2D_8", jm_glCopyTexSubImage2D_8 ), ( "jm_glCullFace_1", jm_glCullFace_1 ), ( "jm_glDeleteTextures_3", jm_glDeleteTextures_3 ), ( "jm_glDeleteTextures_2", jm_glDeleteTextures_2 ), ( "jm_glDepthFunc_1", jm_glDepthFunc_1 ), ( "jm_glDepthMask_1", jm_glDepthMask_1 ), ( "jm_glDepthRangef_2", jm_glDepthRangef_2 ), ( "jm_glDisable_1", jm_glDisable_1 ), ( "jm_glDisableClientState_1", jm_glDisableClientState_1 ), ( "jm_glDrawArrays_3", jm_glDrawArrays_3 ), ( "jm_glDrawElements_4", jm_glDrawElements_4 ), ( "jm_glEnable_1", jm_glEnable_1 ), ( "jm_glEnableClientState_1", jm_glEnableClientState_1 ), ( "jm_glFinish_0", jm_glFinish_0 ), ( "jm_glFlush_0", jm_glFlush_0 ), ( "jm_glFogf_2", jm_glFogf_2 ), ( "jm_glFogfv_3", jm_glFogfv_3 ), ( "jm_glFogfv_2", jm_glFogfv_2 ), ( "jm_glFrontFace_1", jm_glFrontFace_1 ), ( "jm_glFrustumf_6", jm_glFrustumf_6 ), ( "jm_glGenTextures_3", jm_glGenTextures_3 ), ( "jm_glGenTextures_2", jm_glGenTextures_2 ), ( "jm_glGetError_0", jm_glGetError_0 ), ( "jm_glGetIntegerv_3", jm_glGetIntegerv_3 ), ( "jm_glGetIntegerv_2", jm_glGetIntegerv_2 ), ( "jm_glGetString_1", jm_glGetString_1 ), ( "jm_glHint_2", jm_glHint_2 ), ( "jm_glLightModelf_2", jm_glLightModelf_2 ), ( "jm_glLightModelfv_3", jm_glLightModelfv_3 ), ( "jm_glLightModelfv_2", jm_glLightModelfv_2 ), ( "jm_glLightf_3", jm_glLightf_3 ), ( "jm_glLightfv_4", jm_glLightfv_4 ), ( "jm_glLightfv_3", jm_glLightfv_3 ), ( "jm_glLineWidth_1", jm_glLineWidth_1 ), ( "jm_glLoadIdentity_0", jm_glLoadIdentity_0 ), ( "jm_glLoadMatrixf_2", jm_glLoadMatrixf_2 ), ( "jm_glLoadMatrixf_1", jm_glLoadMatrixf_1 ), ( "jm_glLogicOp_1", jm_glLogicOp_1 ), ( "jm_glMaterialf_3", jm_glMaterialf_3 ), ( "jm_glMaterialfv_4", jm_glMaterialfv_4 ), ( "jm_glMaterialfv_3", jm_glMaterialfv_3 ), ( "jm_glMatrixMode_1", jm_glMatrixMode_1 ), ( "jm_glMultMatrixf_2", jm_glMultMatrixf_2 ), ( "jm_glMultMatrixf_1", jm_glMultMatrixf_1 ), ( "jm_glMultiTexCoord4f_5", jm_glMultiTexCoord4f_5 ), ( "jm_glNormal3f_3", jm_glNormal3f_3 ), ( "jm_glNormalPointer_3", jm_glNormalPointer_3 ), ( "jm_glOrthof_6", jm_glOrthof_6 ), ( "jm_glPixelStorei_2", jm_glPixelStorei_2 ), ( "jm_glPointSize_1", jm_glPointSize_1 ), ( "jm_glPolygonOffset_2", jm_glPolygonOffset_2 ), ( "jm_glPopMatrix_0", jm_glPopMatrix_0 ), ( "jm_glPushMatrix_0", jm_glPushMatrix_0 ), ( "jm_glReadPixels_7", jm_glReadPixels_7 ), ( "jm_glRotatef_4", jm_glRotatef_4 ), ( "jm_glRotatex_4", jm_glRotatex_4 ), ( "jm_glSampleCoverage_2", jm_glSampleCoverage_2 ), ( "jm_glScalef_3", jm_glScalef_3 ), ( "jm_glScalex_3", jm_glScalex_3 ), ( "jm_glScissor_4", jm_glScissor_4 ), ( "jm_glShadeModel_1", jm_glShadeModel_1 ), ( "jm_glStencilFunc_3", jm_glStencilFunc_3 ), ( "jm_glStencilMask_1", jm_glStencilMask_1 ), ( "jm_glStencilOp_3", jm_glStencilOp_3 ), ( "jm_glTexCoordPointer_4", jm_glTexCoordPointer_4 ), ( "jm_glTexEnvf_3", jm_glTexEnvf_3 ), ( "jm_glTexEnvfv_4", jm_glTexEnvfv_4 ), ( "jm_glTexEnvfv_3", jm_glTexEnvfv_3 ), ( "jm_glTexImage2D_9", jm_glTexImage2D_9 ), ( "jm_glTexParameterf_3", jm_glTexParameterf_3 ), ( "jm_glTexParameteri_3", jm_glTexParameteri_3 ), ( "jm_glTexSubImage2D_9", jm_glTexSubImage2D_9 ), ( "jm_glTranslatef_3", jm_glTranslatef_3 ), ( "jm_glVertexPointer_4", jm_glVertexPointer_4 ), ( "jm_glViewport_4", jm_glViewport_4 ), ( "jm_glBegin_1", jm_glBegin_1 ), ( "jm_glEnd_0", jm_glEnd_0 ), ( "jm_glVertex3f_3", jm_glVertex3f_3 ), ( "jm_glPolygonMode_2", jm_glPolygonMode_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_GL10", jstatic_NULL_GL10 ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GL10 : JR.M
jstatic_NULL_GL10 s =
    JR.static "NullGL10" jclinit "NULL_GL10"
        (JR.new jnew_0 [])
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


jm_glActiveTexture_1 : JR.Method
jm_glActiveTexture_1 jheap jthis jargs =
    JR.method [ ( "texture", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glAlphaFunc_2 : JR.Method
jm_glAlphaFunc_2 jheap jthis jargs =
    JR.method [ ( "func", "I" ), ( "ref", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glBindTexture_2 : JR.Method
jm_glBindTexture_2 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "texture", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glBlendFunc_2 : JR.Method
jm_glBlendFunc_2 jheap jthis jargs =
    JR.method [ ( "sfactor", "I" ), ( "dfactor", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glClear_1 : JR.Method
jm_glClear_1 jheap jthis jargs =
    JR.method [ ( "mask", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glClearColor_4 : JR.Method
jm_glClearColor_4 jheap jthis jargs =
    JR.method [ ( "red", "F" ), ( "green", "F" ), ( "blue", "F" ), ( "alpha", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glClearDepthf_1 : JR.Method
jm_glClearDepthf_1 jheap jthis jargs =
    JR.method [ ( "depth", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glClearStencil_1 : JR.Method
jm_glClearStencil_1 jheap jthis jargs =
    JR.method [ ( "s", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glClientActiveTexture_1 : JR.Method
jm_glClientActiveTexture_1 jheap jthis jargs =
    JR.method [ ( "texture", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glColor4f_4 : JR.Method
jm_glColor4f_4 jheap jthis jargs =
    JR.method [ ( "red", "F" ), ( "green", "F" ), ( "blue", "F" ), ( "alpha", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glColorMask_4 : JR.Method
jm_glColorMask_4 jheap jthis jargs =
    JR.method [ ( "red", "Z" ), ( "green", "Z" ), ( "blue", "Z" ), ( "alpha", "Z" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glColorPointer_4 : JR.Method
jm_glColorPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glCompressedTexImage2D_8 : JR.Method
jm_glCompressedTexImage2D_8 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "internalformat", "I" ), ( "width", "I" ), ( "height", "I" ), ( "border", "I" ), ( "imageSize", "I" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glCompressedTexSubImage2D_9 : JR.Method
jm_glCompressedTexSubImage2D_9 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "xoffset", "I" ), ( "yoffset", "I" ), ( "width", "I" ), ( "height", "I" ), ( "format", "I" ), ( "imageSize", "I" ), ( "data", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glCopyTexImage2D_8 : JR.Method
jm_glCopyTexImage2D_8 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "internalformat", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ), ( "border", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glCopyTexSubImage2D_8 : JR.Method
jm_glCopyTexSubImage2D_8 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "xoffset", "I" ), ( "yoffset", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glCullFace_1 : JR.Method
jm_glCullFace_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDeleteTextures_3 : JR.Method
jm_glDeleteTextures_3 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDeleteTextures_2 : JR.Method
jm_glDeleteTextures_2 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDepthFunc_1 : JR.Method
jm_glDepthFunc_1 jheap jthis jargs =
    JR.method [ ( "func", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDepthMask_1 : JR.Method
jm_glDepthMask_1 jheap jthis jargs =
    JR.method [ ( "flag", "Z" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDepthRangef_2 : JR.Method
jm_glDepthRangef_2 jheap jthis jargs =
    JR.method [ ( "zNear", "F" ), ( "zFar", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDisable_1 : JR.Method
jm_glDisable_1 jheap jthis jargs =
    JR.method [ ( "cap", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDisableClientState_1 : JR.Method
jm_glDisableClientState_1 jheap jthis jargs =
    JR.method [ ( "array", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDrawArrays_3 : JR.Method
jm_glDrawArrays_3 jheap jthis jargs =
    JR.method [ ( "mode", "I" ), ( "first", "I" ), ( "count", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glDrawElements_4 : JR.Method
jm_glDrawElements_4 jheap jthis jargs =
    JR.method [ ( "mode", "I" ), ( "count", "I" ), ( "type", "I" ), ( "indices", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glEnable_1 : JR.Method
jm_glEnable_1 jheap jthis jargs =
    JR.method [ ( "cap", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glEnableClientState_1 : JR.Method
jm_glEnableClientState_1 jheap jthis jargs =
    JR.method [ ( "array", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFinish_0 : JR.Method
jm_glFinish_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFlush_0 : JR.Method
jm_glFlush_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFogf_2 : JR.Method
jm_glFogf_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFogfv_3 : JR.Method
jm_glFogfv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFogfv_2 : JR.Method
jm_glFogfv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFrontFace_1 : JR.Method
jm_glFrontFace_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glFrustumf_6 : JR.Method
jm_glFrustumf_6 jheap jthis jargs =
    JR.method [ ( "left", "F" ), ( "right", "F" ), ( "bottom", "F" ), ( "top", "F" ), ( "zNear", "F" ), ( "zFar", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glGenTextures_3 : JR.Method
jm_glGenTextures_3 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glGenTextures_2 : JR.Method
jm_glGenTextures_2 jheap jthis jargs =
    JR.method [ ( "n", "I" ), ( "textures", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glGetError_0 : JR.Method
jm_glGetError_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_glGetIntegerv_3 : JR.Method
jm_glGetIntegerv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glGetIntegerv_2 : JR.Method
jm_glGetIntegerv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glGetString_1 : JR.Method
jm_glGetString_1 jheap jthis jargs =
    JR.method [ ( "name", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_glHint_2 : JR.Method
jm_glHint_2 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLightModelf_2 : JR.Method
jm_glLightModelf_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLightModelfv_3 : JR.Method
jm_glLightModelfv_3 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLightModelfv_2 : JR.Method
jm_glLightModelfv_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLightf_3 : JR.Method
jm_glLightf_3 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLightfv_4 : JR.Method
jm_glLightfv_4 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLightfv_3 : JR.Method
jm_glLightfv_3 jheap jthis jargs =
    JR.method [ ( "light", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLineWidth_1 : JR.Method
jm_glLineWidth_1 jheap jthis jargs =
    JR.method [ ( "width", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLoadIdentity_0 : JR.Method
jm_glLoadIdentity_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLoadMatrixf_2 : JR.Method
jm_glLoadMatrixf_2 jheap jthis jargs =
    JR.method [ ( "m", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLoadMatrixf_1 : JR.Method
jm_glLoadMatrixf_1 jheap jthis jargs =
    JR.method [ ( "m", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glLogicOp_1 : JR.Method
jm_glLogicOp_1 jheap jthis jargs =
    JR.method [ ( "opcode", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMaterialf_3 : JR.Method
jm_glMaterialf_3 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMaterialfv_4 : JR.Method
jm_glMaterialfv_4 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMaterialfv_3 : JR.Method
jm_glMaterialfv_3 jheap jthis jargs =
    JR.method [ ( "face", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMatrixMode_1 : JR.Method
jm_glMatrixMode_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMultMatrixf_2 : JR.Method
jm_glMultMatrixf_2 jheap jthis jargs =
    JR.method [ ( "m", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMultMatrixf_1 : JR.Method
jm_glMultMatrixf_1 jheap jthis jargs =
    JR.method [ ( "m", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glMultiTexCoord4f_5 : JR.Method
jm_glMultiTexCoord4f_5 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "s", "F" ), ( "t", "F" ), ( "r", "F" ), ( "q", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glNormal3f_3 : JR.Method
jm_glNormal3f_3 jheap jthis jargs =
    JR.method [ ( "nx", "F" ), ( "ny", "F" ), ( "nz", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glNormalPointer_3 : JR.Method
jm_glNormalPointer_3 jheap jthis jargs =
    JR.method [ ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glOrthof_6 : JR.Method
jm_glOrthof_6 jheap jthis jargs =
    JR.method [ ( "left", "F" ), ( "right", "F" ), ( "bottom", "F" ), ( "top", "F" ), ( "zNear", "F" ), ( "zFar", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glPixelStorei_2 : JR.Method
jm_glPixelStorei_2 jheap jthis jargs =
    JR.method [ ( "pname", "I" ), ( "param", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glPointSize_1 : JR.Method
jm_glPointSize_1 jheap jthis jargs =
    JR.method [ ( "size", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glPolygonOffset_2 : JR.Method
jm_glPolygonOffset_2 jheap jthis jargs =
    JR.method [ ( "factor", "F" ), ( "units", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glPopMatrix_0 : JR.Method
jm_glPopMatrix_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glPushMatrix_0 : JR.Method
jm_glPushMatrix_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glReadPixels_7 : JR.Method
jm_glReadPixels_7 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ), ( "format", "I" ), ( "type", "I" ), ( "pixels", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glRotatef_4 : JR.Method
jm_glRotatef_4 jheap jthis jargs =
    JR.method [ ( "angle", "F" ), ( "x", "F" ), ( "y", "F" ), ( "z", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glRotatex_4 : JR.Method
jm_glRotatex_4 jheap jthis jargs =
    JR.method [ ( "angle", "I" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glSampleCoverage_2 : JR.Method
jm_glSampleCoverage_2 jheap jthis jargs =
    JR.method [ ( "value", "F" ), ( "invert", "Z" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glScalef_3 : JR.Method
jm_glScalef_3 jheap jthis jargs =
    JR.method [ ( "x", "F" ), ( "y", "F" ), ( "z", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glScalex_3 : JR.Method
jm_glScalex_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glScissor_4 : JR.Method
jm_glScissor_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glShadeModel_1 : JR.Method
jm_glShadeModel_1 jheap jthis jargs =
    JR.method [ ( "mode", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glStencilFunc_3 : JR.Method
jm_glStencilFunc_3 jheap jthis jargs =
    JR.method [ ( "func", "I" ), ( "ref", "I" ), ( "mask", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glStencilMask_1 : JR.Method
jm_glStencilMask_1 jheap jthis jargs =
    JR.method [ ( "mask", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glStencilOp_3 : JR.Method
jm_glStencilOp_3 jheap jthis jargs =
    JR.method [ ( "fail", "I" ), ( "zfail", "I" ), ( "zpass", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexCoordPointer_4 : JR.Method
jm_glTexCoordPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvf_3 : JR.Method
jm_glTexEnvf_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvfv_4 : JR.Method
jm_glTexEnvfv_4 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ), ( "offset", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexEnvfv_3 : JR.Method
jm_glTexEnvfv_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "params", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexImage2D_9 : JR.Method
jm_glTexImage2D_9 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "internalformat", "I" ), ( "width", "I" ), ( "height", "I" ), ( "border", "I" ), ( "format", "I" ), ( "type", "I" ), ( "pixels", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameterf_3 : JR.Method
jm_glTexParameterf_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexParameteri_3 : JR.Method
jm_glTexParameteri_3 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "pname", "I" ), ( "param", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTexSubImage2D_9 : JR.Method
jm_glTexSubImage2D_9 jheap jthis jargs =
    JR.method [ ( "target", "I" ), ( "level", "I" ), ( "xoffset", "I" ), ( "yoffset", "I" ), ( "width", "I" ), ( "height", "I" ), ( "format", "I" ), ( "type", "I" ), ( "pixels", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glTranslatef_3 : JR.Method
jm_glTranslatef_3 jheap jthis jargs =
    JR.method [ ( "x", "F" ), ( "y", "F" ), ( "z", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glVertexPointer_4 : JR.Method
jm_glVertexPointer_4 jheap jthis jargs =
    JR.method [ ( "size", "I" ), ( "type", "I" ), ( "stride", "I" ), ( "pointer", "" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glViewport_4 : JR.Method
jm_glViewport_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glBegin_1 : JR.Method
jm_glBegin_1 jheap jthis jargs =
    JR.method [ ( "i", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glEnd_0 : JR.Method
jm_glEnd_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glVertex3f_3 : JR.Method
jm_glVertex3f_3 jheap jthis jargs =
    JR.method [ ( "f", "F" ), ( "f2", "F" ), ( "f3", "F" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_glPolygonMode_2 : JR.Method
jm_glPolygonMode_2 jheap jthis jargs =
    JR.method [ ( "i", "I" ), ( "i1", "I" ) ] ""
        (JR.run [ 
                    JR.returnVoid ])
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

