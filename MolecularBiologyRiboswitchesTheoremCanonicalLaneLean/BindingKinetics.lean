import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure BindingKineticsPackage where
  dissociationConstant : ℝ
  associationRate : ℝ
  dissociationRate : ℝ
  ligandConcentration : ℝ
  bindingAffinity : Prop

def BindingKineticsClosed (K : BindingKineticsPackage) : Prop :=
  K.dissociationConstant > 0 ∧ K.associationRate > 0 ∧ K.dissociationRate > 0

theorem binding_kinetics_closed (K : BindingKineticsPackage) (h : K.dissociationConstant > 0) (h1 : K.associationRate > 0) (h2 : K.dissociationRate > 0) : BindingKineticsClosed K := by
  exact And.intro h (And.intro h1 h2)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse