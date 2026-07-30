import MolecularBiologyRiboswitchesTheoremCanonicalLaneLean.RiboswitchKineticModeling

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure ThermodynamicStabilityPackage {M : KineticModelPackage} where
  freeEnergyLandscape : Prop
  foldingThermodynamics : Prop
  ligandBindingAffinity : Prop
  temperatureDependence : Prop

structure ThermodynamicStabilityEvidence {M : KineticModelPackage} (T : ThermodynamicStabilityPackage M) where
  freeEnergyLandscapeClosed : T.freeEnergyLandscape
  foldingThermodynamicsClosed : T.foldingThermodynamics
  ligandBindingAffinityClosed : T.ligandBindingAffinity
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicStabilityClosed {M : KineticModelPackage} (T : ThermodynamicStabilityPackage M) : Prop :=
  T.freeEnergyLandscape ∧ T.foldingThermodynamics ∧ T.ligandBindingAffinity ∧ T.temperatureDependence

theorem thermodynamic_stability_closed_from_evidence
    {M : KineticModelPackage} (T : ThermodynamicStabilityPackage M)
    (E : ThermodynamicStabilityEvidence T) : ThermodynamicStabilityClosed T := by
  exact And.intro E.freeEnergyLandscapeClosed
    (And.intro E.foldingThermodynamicsClosed
      (And.intro E.ligandBindingAffinityClosed E.temperatureDependenceClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse