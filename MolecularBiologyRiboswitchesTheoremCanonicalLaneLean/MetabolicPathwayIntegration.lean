import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure MetabolicPathwayIntegrationPackage where
  metaboliteSensing : Type
  feedbackRegulation : Type
  pathwayFluxControl : Type
  metaboliteSensingClosed : metaboliteSensing
  feedbackRegulationClosed : feedbackRegulation
  pathwayFluxControlClosed : pathwayFluxControl

structure MetabolicPathwayIntegrationEvidence (M : MetabolicPathwayIntegrationPackage) where
  metaboliteSensingClosed : M.metaboliteSensing
  feedbackRegulationClosed : M.feedbackRegulation
  pathwayFluxControlClosed : M.pathwayFluxControl

def MetabolicPathwayIntegrationClosed (M : MetabolicPathwayIntegrationPackage) : Prop :=
  M.metaboliteSensing ∧ M.feedbackRegulation ∧ M.pathwayFluxControl

theorem metabolic_pathway_integration_closed_from_evidence
    (M : MetabolicPathwayIntegrationPackage)
    (E : MetabolicPathwayIntegrationEvidence M) : MetabolicPathwayIntegrationClosed M := by
  exact And.intro E.metaboliteSensingClosed
    (And.intro E.feedbackRegulationClosed E.pathwayFluxControlClosed)

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
