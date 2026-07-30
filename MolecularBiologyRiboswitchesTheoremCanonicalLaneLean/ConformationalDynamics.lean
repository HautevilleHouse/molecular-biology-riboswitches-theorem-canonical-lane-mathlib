import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure LigandBindingDomain where
  aptamerDomain : Type u
  expressionPlatform : Type v
  ligandSpecificity : Prop
  bindingAffinity : Prop

structure ConformationalEnsemble where
  aptamerState : Prop
  expressionState : Prop
  transitionRate : Prop
  equilibriumConstant : Prop

structure ConformationalSwitchingEvidence where
  ligandBindingClosed : LigandBindingDomain → Prop
  ensembleClosed : ConformationalEnsemble → Prop

def ConformationalDynamicsClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem conformational_dynamics_closed (A : AdmissibleClass) :
    ConformationalDynamicsClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
