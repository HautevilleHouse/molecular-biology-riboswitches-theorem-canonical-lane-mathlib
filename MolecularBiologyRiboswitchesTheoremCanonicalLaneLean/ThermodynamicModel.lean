import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure ThermodynamicModel where
  freeEnergyChange : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  meltingTemperature : ℝ
  stability : Prop

structure ThermodynamicModelEvidence (T : ThermodynamicModel) where
  enthalpyChangeClosed : T.enthalpyChange = -30.0
  entropyChangeClosed : T.entropyChange = -0.1
  meltingTemperatureClosed : T.meltingTemperature = 330.0
  stabilityClosed : T.stability

def ThermodynamicModelClosed (T : ThermodynamicModel) : Prop :=
  T.stability

theorem thermodynamic_model_closed (T : ThermodynamicModel) (E : ThermodynamicModelEvidence T) :
    ThermodynamicModelClosed T := by
  exact E.stabilityClosed

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse