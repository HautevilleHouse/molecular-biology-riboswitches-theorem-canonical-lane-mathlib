import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure KineticControlDomainPackage {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} {R : RegulatorySwitchDomainPackage M L} where
  transcriptionTermination : Prop
  translationInitiation : Prop
  RNAPolymerasePausing : Prop
  kineticCompetition : Prop

structure KineticControlDomainEvidence {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} {R : RegulatorySwitchDomainPackage M L}
    (K : KineticControlDomainPackage M L R) where
  transcriptionTerminationClosed : K.transcriptionTermination
  translationInitiationClosed : K.translationInitiation
  RNAPolymerasePausingClosed : K.RNAPolymerasePausing
  kineticCompetitionClosed : K.kineticCompetition

def KineticControlDomainClosed {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} {R : RegulatorySwitchDomainPackage M L}
    (K : KineticControlDomainPackage M L R) : Prop :=
  K.transcriptionTermination ∧ K.translationInitiation ∧ K.RNAPolymerasePausing ∧ K.kineticCompetition

theorem kinetic_control_domain_closed_from_evidence
    {M : RiboswitchMoleculePackage} {L : LigandBindingDomainPackage M}
    {R : RegulatorySwitchDomainPackage M L} (K : KineticControlDomainPackage M L R)
    (E : KineticControlDomainEvidence K) : KineticControlDomainClosed K := by
  exact And.intro E.transcriptionTerminationClosed
    (And.intro E.translationInitiationClosed
      (And.intro E.RNAPolymerasePausingClosed E.kineticCompetitionClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse