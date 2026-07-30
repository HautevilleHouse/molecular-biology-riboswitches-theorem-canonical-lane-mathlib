import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : RiboswitchAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.ligandIdentified ∧ A.object.conformationSwitchingVerified ∧ A.object.geneRegulationFunctional) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
