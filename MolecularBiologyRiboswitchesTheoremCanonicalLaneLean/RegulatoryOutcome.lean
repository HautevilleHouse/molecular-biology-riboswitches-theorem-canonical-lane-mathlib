import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RegulatoryOutcomePackage where
  geneExpressionLevel : ℝ
  regulatoryMechanism : String
  terminationHairpinFormed : Prop
  translationInitiationBlocked : Prop
  outcomeConsistent : Prop

structure RegulatoryOutcomeEvidence (R : RegulatoryOutcomePackage) where
  terminationHairpinFormedClosed : R.terminationHairpinFormed
  translationInitiationBlockedClosed : R.translationInitiationBlocked
  outcomeConsistentClosed : R.outcomeConsistent

def RegulatoryOutcomeClosed (R : RegulatoryOutcomePackage) : Prop :=
  R.terminationHairpinFormed ∧ R.translationInitiationBlocked ∧ R.outcomeConsistent

theorem regulatory_outcome_closed_from_evidence (R : RegulatoryOutcomePackage) (E : RegulatoryOutcomeEvidence R) :
    RegulatoryOutcomeClosed R := by
  exact And.intro E.terminationHairpinFormedClosed (And.intro E.translationInitiationBlockedClosed E.outcomeConsistentClosed)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse