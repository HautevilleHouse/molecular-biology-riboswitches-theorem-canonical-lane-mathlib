import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure TranscriptionRate where
  polymerasePausing : Prop
  terminationEfficiency : Prop
  antiTermination : Prop
  kineticCompetition : Prop

structure TranslationInitiation where
  ribosomeBinding : Prop
  shineDalgarnoAccessibility : Prop
  startCodonExposure : Prop
  expressionLevel : Prop

structure KineticControlEvidence where
  transcriptionClosed : TranscriptionRate → Prop
  translationClosed : TranslationInitiation → Prop

def KineticControlClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem kinetic_control_closed (A : AdmissibleClass) :
    KineticControlClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
