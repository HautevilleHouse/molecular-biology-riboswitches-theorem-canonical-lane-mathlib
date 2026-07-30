import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure ThermodynamicStabilityDomainPackage {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} where
  freeEnergyLandscape : Prop
  foldingPathway : Prop
  ligandStabilizedState : Prop
  temperatureDependence : Prop

structure ThermodynamicStabilityDomainEvidence {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} (T : ThermodynamicStabilityDomainPackage M L) where
  freeEnergyLandscapeClosed : T.freeEnergyLandscape
  foldingPathwayClosed : T.foldingPathway
  ligandStabilizedStateClosed : T.ligandStabilizedState
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicStabilityDomainClosed {M : RiboswitchMoleculePackage}
    {L : LigandBindingDomainPackage M} (T : ThermodynamicStabilityDomainPackage M L) : Prop :=
  T.freeEnergyLandscape ∧ T.foldingPathway ∧ T.ligandStabilizedState ∧ T.temperatureDependence

theorem thermodynamic_stability_domain_closed_from_evidence
    {M : RiboswitchMoleculePackage} {L : LigandBindingDomainPackage M}
    (T : ThermodynamicStabilityDomainPackage M L) (E : ThermodynamicStabilityDomainEvidence T) :
    ThermodynamicStabilityDomainClosed T := by
  exact And.intro E.freeEnergyLandscapeClosed
    (And.intro E.foldingPathwayClosed
      (And.intro E.ligandStabilizedStateClosed E.temperatureDependenceClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse