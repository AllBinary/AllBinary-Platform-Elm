{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
module LayerCaptionResources where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float

data LayerCaptionResources = LayerCaptionResources
    { header_ :: JavaHeader
    , rESOURCE :: IORef (String)
    }

instance JavaNull LayerCaptionResources where
    javaNull = javaNullRecord "LayerCaptionResources"

instance JavaEquals LayerCaptionResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerCaptionResources where
    (==) = jrecordEquals

instance JavaObjectClass LayerCaptionResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

instance_ :: LayerCaptionResources
{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO LayerCaptionResources
newRecord_ = do
    header_ <- newJavaHeader
    rESOURCE <- newIORef ""
    let this = LayerCaptionResources header_ rESOURCE
    jregisterLevel header_ this
    pure this

initFields_ :: LayerCaptionResources -> IO ()
initFields_ this = do
    jset this.rESOURCE ("/unit_message_bubbled_box.png")
    pure ()


getInstance :: IO (LayerCaptionResources)
getInstance = do
        pure (LayerCaptionResources.instance_)

new_ :: IO LayerCaptionResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerCaptionResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


