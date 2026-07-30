import MolecularBiologyRiboswitchesTheoremCanonicalLaneLean.RiboswitchThermodynamicStability

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RegulatoryFunctionPackage {M : KineticModelPackage}
    {T : ThermodynamicStabilityPackage M} where
  geneExpressionControl : Prop
  ligandSensitivity : Prop
  regulatoryDynamicRange : Prop
  robustnessAndNoise : Prop

structure RegulatoryFunctionEvidence {M : KineticModelPackage}
    {T : ThermodynamicStabilityPackage M} (R : RegulatoryFunctionPackage T) where
  geneExpressionControlClosed : R.geneExpressionControl
  ligandSensitivityClosed : R.ligandSensitivity
  regulatoryDynamicRangeClosed : R.regulatoryDynamicRange
  robustnessAndNoiseClosed : R.robustnessAndNoise

def RegulatoryFunctionClosed {M : KineticModelPackage}
    {T : ThermodynamicStabilityPackage M} (R : RegulatoryFunctionPackage T) : Prop :=
  R.geneExpressionControl ∧ R.ligandSensitivity ∧ R.regulatoryDynamicRange ∧ R.robustnessAndNoise

theorem regulatory_function_closed_from_evidence
    {M : KineticModelPackage} {T : ThermodynamicStabilityPackage M}
    (R : RegulatoryFunctionPackage T) (E : RegulatoryFunctionEvidence R) :
    RegulatoryFunctionClosed R := by
  exact And.intro E.geneExpressionControlClosed
    (And.intro E.ligandSensitivityClosed
      (And.intro E.regulatoryDynamicRangeClosed E.robustnessAndNoiseClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse