import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.ligandIdentified ∧ A.object.conformationSwitchingVerified ∧ A.object.geneRegulationFunctional

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
