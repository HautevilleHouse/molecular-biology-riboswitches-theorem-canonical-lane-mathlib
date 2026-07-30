import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchConformationPackage where
  aptamerDomain : Type u
  expressionPlatform : Type v
  ligandBinding : Prop
  conformationalSwitch : Prop
  geneRegulationReadout : Prop

structure RiboswitchConformationEvidence (R : RiboswitchConformationPackage) where
  aptamerDomainClosed : R.aptamerDomain
  expressionPlatformClosed : R.expressionPlatform
  ligandBindingClosed : R.ligandBinding
  conformationalSwitchClosed : R.conformationalSwitch
  geneRegulationReadoutClosed : R.geneRegulationReadout

def RiboswitchConformationClosed (R : RiboswitchConformationPackage) : Prop :=
  R.aptamerDomain ∧ R.expressionPlatform ∧ R.ligandBinding ∧ R.conformationalSwitch ∧ R.geneRegulationReadout

theorem riboswitch_conformation_closed_from_evidence (R : RiboswitchConformationPackage) (E : RiboswitchConformationEvidence R) :
    RiboswitchConformationClosed R := by
  exact And.intro E.aptamerDomainClosed
    (And.intro E.expressionPlatformClosed
      (And.intro E.ligandBindingClosed
        (And.intro E.conformationalSwitchClosed E.geneRegulationReadoutClosed)))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse