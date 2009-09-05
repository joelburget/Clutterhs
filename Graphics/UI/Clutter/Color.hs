-- GENERATED by C->Haskell Compiler, version 0.16.0 Crystal Seed, 24 Jan 2009 (Haskell)
-- Edit the ORIGNAL .chs file instead!


{-# LINE 1 "Graphics/UI/Clutter/Color.chs" #-}-- -*-haskell-*-
--  Clutter Color
--
--  Author : Matthew Arsenault
--
--  Created: 4 Sep 2009
--
--  Copyright (C) 2009 Matthew Arsenault
--
--  This library is free software; you can redistribute it and/or
--  modify it under the terms of the GNU Lesser General Public
--  License as published by the Free Software Foundation; either
--  version 3 of the License, or (at your option) any later version.
--
--  This library is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
--  Lesser General Public License for more details.
--
{-# LANGUAGE ForeignFunctionInterface, TypeSynonymInstances #-}



{-# LINE 24 "Graphics/UI/Clutter/Color.chs" #-}

module Graphics.UI.Clutter.Color (
                                  colorNew,
                                  colorCopy
                                 ) where

import Graphics.UI.Clutter.Types
{-# LINE 31 "Graphics/UI/Clutter/Color.chs" #-}

import Foreign.ForeignPtr (ForeignPtr, castForeignPtr, withForeignPtr, unsafeForeignPtrToPtr)
import Foreign.C.Types (CULong, CUInt, CUChar)
import Foreign.Ptr (Ptr)
import Data.Word
import System.Glib.GType (GType, typeInstanceIsA)
import System.Glib.GObject

type GUInt8 = (CUChar)
{-# LINE 40 "Graphics/UI/Clutter/Color.chs" #-}
-- | Creates a new color
--
colorNew :: GUInt8 -> GUInt8 -> GUInt8 -> GUInt8 -> IO (Ptr ClutterColor)
colorNew r b g a = clutter_color_new r b g a
--{#fun unsafe color_new
--      `(RString s)' =>
--      {withRString* `s'      ,
--       withRString* `s'    } -> `ClutterColor'#}
--{#fun color_new { r b g a } -> `ClutterColor' ClutterColor #}

--{#fun color_new as colorNew { `CUChar', `CUChar', `CUChar', `CUChar'} -> `ClutterColor' ClutterColor #}


colorCopy :: ClutterColor -> IO ClutterColor
colorCopy = undefined



foreign import ccall unsafe "Graphics/UI/Clutter/Color.chs.h clutter_color_new"
  clutter_color_new :: (CUChar -> (CUChar -> (CUChar -> (CUChar -> (IO (Ptr (ClutterColor)))))))
