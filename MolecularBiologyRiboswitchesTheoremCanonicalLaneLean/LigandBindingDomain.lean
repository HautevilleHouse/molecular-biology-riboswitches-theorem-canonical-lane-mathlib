import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure LigandBindingDomainPackage {M : RiboswitchMoleculePackage} where
  aptamerDomain : Type u
  ligandType : Type v
  bindingAffinity : Prop
  conformationalChange : Prop
  bindingSiteSpecificity : Prop

structure LigandBindingDomainEvidence {M : RiboswitchMoleculePackage} (L : LigandBindingDomainPackage M) where
  bindingAffinityClosed : L.bindingAffinity
  conformationalChangeClosed : L.conformationalChange
  bindingSiteSpecificityClosed : L.bindingSiteSpecificity

def LigandBindingDomainClosed {M : RiboswitchMoleculePackage} (L : LigandBindingDomainPackage M) : Prop :=
  L.bindingAffinity ∧ L.conformationalChange ∧ L.bindingSiteSpecificity

theorem ligand_binding_domain_closed_from_evidence
    {M : RiboswitchMoleculePackage} (L : LigandBindingDomainPackage M)
    (E : LigandBindingDomainEvidence L) : LigandBindingDomainClosed L := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed E.bindingSiteSpecificityClosed)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse