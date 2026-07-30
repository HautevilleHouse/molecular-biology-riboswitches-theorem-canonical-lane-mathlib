import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RegulatorySwitchDomainPackage {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} where
  expressionPlatform : Type u
  regulatoryMechanism : Type v
  geneRegulationOnBinding : Prop
  switchKinetics : Prop
  metabolicPathwayIntegration : Prop

structure RegulatorySwitchDomainEvidence {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} (R : RegulatorySwitchDomainPackage M L) where
  geneRegulationOnBindingClosed : R.geneRegulationOnBinding
  switchKineticsClosed : R.switchKinetics
  metabolicPathwayIntegrationClosed : R.metabolicPathwayIntegration

def RegulatorySwitchDomainClosed {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} (R : RegulatorySwitchDomainPackage M L) : Prop :=
  R.geneRegulationOnBinding ∧ R.switchKinetics ∧ R.metabolicPathwayIntegration

theorem regulatory_switch_domain_closed_from_evidence
    {M : RiboswitchMoleculePackage} {L : LigandBindingDomainPackage M}
    (R : RegulatorySwitchDomainPackage M L) (E : RegulatorySwitchDomainEvidence R) :
    RegulatorySwitchDomainClosed R := by
  exact And.intro E.geneRegulationOnBindingClosed
    (And.intro E.switchKineticsClosed E.metabolicPathwayIntegrationClosed)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse