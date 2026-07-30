import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure EvolutionaryConservationDomainPackage {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} {R : RegulatorySwitchDomainPackage M L}
    {K : KineticControlDomainPackage M L R} where
  sequenceConservation : Prop
  structuralConservation : Prop
  phylogeneticDistribution : Prop
  functionalSelection : Prop

structure EvolutionaryConservationDomainEvidence {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} {R : RegulatorySwitchDomainPackage M L}
    {K : KineticControlDomainPackage M L R} (E : EvolutionaryConservationDomainPackage M L R K) where
  sequenceConservationClosed : E.sequenceConservation
  structuralConservationClosed : E.structuralConservation
  phylogeneticDistributionClosed : E.phylogeneticDistribution
  functionalSelectionClosed : E.functionalSelection

def EvolutionaryConservationDomainClosed {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} {R : RegulatorySwitchDomainPackage M L}
    {K : KineticControlDomainPackage M L R} (E : EvolutionaryConservationDomainPackage M L R K) : Prop :=
  E.sequenceConservation ∧ E.structuralConservation ∧ E.phylogeneticDistribution ∧ E.functionalSelection

theorem evolutionary_conservation_domain_closed_from_evidence
    {M : RiboswitchMoleculePackage} {L : LigandBindingDomainPackage M}
    {R : RegulatorySwitchDomainPackage M L} {K : KineticControlDomainPackage M L R}
    (E : EvolutionaryConservationDomainPackage M L R K)
    (Ev : EvolutionaryConservationDomainEvidence E) : EvolutionaryConservationDomainClosed E := by
  exact And.intro Ev.sequenceConservationClosed
    (And.intro Ev.structuralConservationClosed
      (And.intro Ev.phylogeneticDistributionClosed Ev.functionalSelectionClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse