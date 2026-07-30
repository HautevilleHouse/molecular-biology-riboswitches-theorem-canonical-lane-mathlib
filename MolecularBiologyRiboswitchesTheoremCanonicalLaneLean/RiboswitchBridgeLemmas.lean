import MolecularBiologyRiboswitchesTheoremCanonicalLaneLean.RiboswitchAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RiboswitchWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse