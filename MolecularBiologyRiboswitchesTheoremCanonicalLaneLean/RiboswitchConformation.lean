import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchConformationPackage where
  aptamerDomain : Type
  expressionPlatform : Type
  ligandBindingDomain : Type
  onState : Prop
  offState : Prop
  conformationalSwitching : Prop
  aptamerDomainClosed : aptamerDomain
  expressionPlatformClosed : expressionPlatform
  ligandBindingDomainClosed : ligandBindingDomain
  onStateClosed : onState
  offStateClosed : offState
  conformationalSwitchingClosed : conformationalSwitching

structure RiboswitchConformationEvidence (R : RiboswitchConformationPackage) where
  aptamerDomainClosed : R.aptamerDomain
  expressionPlatformClosed : R.expressionPlatform
  ligandBindingDomainClosed : R.ligandBindingDomain
  onStateClosed : R.onState
  offStateClosed : R.offState
  conformationalSwitchingClosed : R.conformationalSwitching

def RiboswitchConformationClosed (R : RiboswitchConformationPackage) : Prop :=
  R.aptamerDomain ∧ R.expressionPlatform ∧ R.ligandBindingDomain ∧
  R.onState ∧ R.offState ∧ R.conformationalSwitching

theorem riboswitch_conformation_closed_from_evidence (R : RiboswitchConformationPackage)
    (E : RiboswitchConformationEvidence R) : RiboswitchConformationClosed R := by
  exact And.intro E.aptamerDomainClosed
    (And.intro E.expressionPlatformClosed
      (And.intro E.ligandBindingDomainClosed
        (And.intro E.onStateClosed
          (And.intro E.offStateClosed E.conformationalSwitchingClosed))))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
