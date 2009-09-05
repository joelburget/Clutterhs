-- GENERATED by C->Haskell Compiler, version 0.16.0 Crystal Seed, 24 Jan 2009 (Haskell)
-- Edit the ORIGNAL .chs file instead!


{-# LINE 1 "./Graphics/UI/Clutter/Types.chs" #-}-- -*-haskell-*-
-- {-# LANGUAGE ForeignFunctionInterface, TypeSynonymInstances #-}



{-# LINE 6 "./Graphics/UI/Clutter/Types.chs" #-}


module Graphics.UI.Clutter.Types (
--                                  module System.Glib.GObject,
                                  ClutterColor,
                                  mkColor,
                                  unColor
                                 ) where

--import C2HS

import Foreign.ForeignPtr (ForeignPtr, castForeignPtr, withForeignPtr, unsafeForeignPtrToPtr)
import Foreign.C.Types (CULong, CUInt)
import System.Glib.GType (GType, typeInstanceIsA)
import System.Glib.GObject

-- from gtk2hs
-- The usage of foreignPtrToPtr should be safe as the evaluation will only be
-- forced if the object is used afterwards
--
castTo :: (GObjectClass obj, GObjectClass obj') => GType -> String
                                                -> (obj -> obj')
castTo gtype objTypeName obj =
  case toGObject obj of
    gobj@(GObject objFPtr)
      | typeInstanceIsA ((unsafeForeignPtrToPtr.castForeignPtr) objFPtr) gtype
                  -> unsafeCastGObject gobj
      | otherwise -> error $ "Cannot cast object to " ++ objTypeName


newtype ClutterColor = ClutterColor (ForeignPtr (ClutterColor))
withClutterColor (ClutterColor fptr) = withForeignPtr fptr
{-# LINE 37 "./Graphics/UI/Clutter/Types.chs" #-}

unColor (ClutterColor o) = o
mkColor = ClutterColor

--class GObjectClass o => DrawableClass o
--toDrawable :: DrawableClass o => o -> Drawable
--toDrawable = unsafeCastGObject . toGObject

instance GObjectClass ClutterColor where
  toGObject = mkGObject . castForeignPtr . unColor
  unsafeCastGObject = mkColor . castForeignPtr . unGObject


