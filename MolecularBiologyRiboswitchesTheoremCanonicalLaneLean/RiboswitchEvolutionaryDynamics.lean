import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure RiboswitchEvolutionaryDynamicsPackage where
  sequenceConservation : Type
  phylogeneticDistribution : Type
  selectivePressure : Type
  sequenceConservationClosed : sequenceConservation
  phylogeneticDistributionClosed : phylogeneticDistribution
  selectivePressureClosed : selectivePressure

structure RiboswitchEvolutionaryDynamicsEvidence (R : RiboswitchEvolutionaryDynamicsPackage) where
  sequenceConservationClosed : R.sequenceConservation
  phylogeneticDistributionClosed : R.phylogeneticDistribution
  selectivePressureClosed : R.selectivePressure

def RiboswitchEvolutionaryDynamicsClosed (R : RiboswitchEvolutionaryDynamicsPackage) : Prop :=
  R.sequenceConservation ∧ R.phylogeneticDistribution ∧ R.selectivePressure

theorem riboswitch_evolutionary_dynamics_closed_from_evidence
    (R : RiboswitchEvolutionaryDynamicsPackage)
    (E : RiboswitchEvolutionaryDynamicsEvidence R) : RiboswitchEvolutionaryDynamicsClosed R := by
  exact And.intro E.sequenceConservationClosed
    (And.intro E.phylogeneticDistributionClosed E.selectivePressureClosed)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
