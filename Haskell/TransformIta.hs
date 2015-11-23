module TransformIta where

-- import PGF hiding (Tree)
-- import qualified PGF

import Trans
import TransUtils

{- NORMALIZE -}
normalizeVP :: GAbsVP -> GAbsVP
normalizeVP = transformVP normalizeVP_

normalizeVP_ :: GAbsVP_ -> GAbsVP_
normalizeVP_ = transformVP_ normalizeVP__

normalizeVP__ :: GAbsVP__ -> GAbsVP__
normalizeVP__ = transformVP__ normalizeV'


normalizeV' :: GAbsV' -> GAbsV'
normalizeV' (GAuxBe (GMakeVP__ v')) = GAuxBe (GMakeVP__ (normalizeV' v'))
normalizeV' (GAuxHave (GMakeVP__ v')) = GAuxHave (GMakeVP__ (normalizeV' v'))

normalizeV' (GMakeV' GArgNP GHave 
              (GMakeArgNP subj (GMakeNP GVoidD (GMakeN' (GSingular GHunger))))) =
  GMakeV' GArgAdj GBe (GMakeArgAdj subj GHungry)

normalizeV' v = v -- base case


{- UNNORMALIZE -}
unnormalizeVP :: GAbsVP -> GAbsVP
unnormalizeVP = transformVP unnormalizeVP_

unnormalizeVP_ :: GAbsVP_ -> GAbsVP_
unnormalizeVP_ = transformVP_ unnormalizeVP__

unnormalizeVP__ :: GAbsVP__ -> GAbsVP__
unnormalizeVP__ = transformVP__ unnormalizeV'

unnormalizeV' :: GAbsV' -> GAbsV'
unnormalizeV' (GAuxBe vp__) = GAuxBe (unnormalizeVP__ vp__)
unnormalizeV' (GAuxHave vp__) = GAuxHave (unnormalizeVP__ vp__)

unnormalizeV' (GMakeV' GArgAdj GBe (GMakeArgAdj subj GHungry)) =
  let hungerNP = GMakeNP GVoidD $ GMakeN' $ GSingular GHunger in
  GMakeV' GArgNP GHave $ GMakeArgNP subj hungerNP

unnormalizeV' v = v -- base case
    

