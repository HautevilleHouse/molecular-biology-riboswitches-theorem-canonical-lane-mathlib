import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchDomain where
  aptamerSequence : String
  expressionPlatform : String
  ligandBinding : Prop
  conformationalChange : Prop
  geneRegulation : Prop

structure RiboswitchDomainEvidence (R : RiboswitchDomain) where
  aptamerSequenceClosed : R.aptamerSequence = "AUGC..."
  expressionPlatformClosed : R.expressionPlatform = "stem-loop"
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  geneRegulationClosed : R.geneRegulation

def RiboswitchDomainClosed (R : RiboswitchDomain) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.geneRegulation

theorem riboswitch_domain_closed (R : RiboswitchDomain) (E : RiboswitchDomainEvidence R) :
    RiboswitchDomainClosed R := by
  exact And.intro E.ligandBindingClosed (And.intro E.conformationalChangeClosed E.geneRegulationClosed)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse